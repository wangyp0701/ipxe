#!/bin/bash
mkdir /home/ubuntu/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEApkrpoajp+4PcJqsPwRBKHY917hB3CASDeWJ39rc3bJRUjwml/3GY92HA5JS25HXhEdW7m/kwVOMEahxls8i4PZ+nxGFWThl47gS/AxCLrIHLtBQ3uYDlIe9OWv8MuloscPa29JgKJq7p1Qq/JLgfK3GR5szvbAlBhG69nuFov+i+ta2J6H2S9R7hwAqrJ2jELtMFJ6shE474iAE4FJvL4GRAylm2RjPdJv0e7jZ/M8Sh6ChnAuWtGQpB1NLqXQv1yUjNscKQPc16XrzsLGiHwt1Ix4Egnb2k5GZGYdbZyK3X7Y7o3eIdqbXGUKUMarpFKcaTzRVWDL1x9aLoSbKI32JREQ/EdLXcwsZ2WPAsMeSxueQp2DGePbtEj/8FyG9fJe6xVDwxVGJ+RhWtwlS/CS+aH3FnlJBWYE0MkjqJzVpZeBxLx9FAINfeyZ7J1JVsh9EA1W9pIJpnuAv0YCkhAdAQnM8uQqQl6SB29M10HXkf6xcS5xBncZUPVc+ktFv3GUft0pu2gIUq6VOtqbUCa9GG5iOt4OnL2+BF0rACPcuFCnR9ERzOvJbH0ERRtU+drxLVEjr1WO475mKvt3jLQo5MaelvBhJglBOwNo4CpxJvzn2IJ7VcCWg5ABpgoNDLHnsB9+z5K16QSiLsddxkh3I5GZHefAFIlrg4V6ADSm8= rsa 4096-091318" > /home/ubuntu/.ssh/authorized_keys
chmod 600 /home/ubuntu/.ssh/authorized_keys
chown ubuntu. /home/ubuntu/.ssh -R
sudo cat >/etc/rc.local<<EOF
#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.
echo "看到这行字，说明添加自启动脚本成功。" > /usr/local/test.log
#启动命令写在这！！！！！！！！！！！

exit 0
EOF

