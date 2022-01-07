
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIOCGIFNAME ;
 int errno ;
 scalar_t__ ioctl (int,int ,char*) ;

int os_get_ifname(int fd, char* namebuf)
{
 if (ioctl(fd, SIOCGIFNAME, namebuf) < 0)
  return -errno;

 return 0;
}
