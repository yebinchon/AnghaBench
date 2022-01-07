
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int eventfd (unsigned int,int) ;

int os_eventfd(unsigned int initval, int flags)
{
 int fd = eventfd(initval, flags);

 if (fd < 0)
  return -errno;
 return fd;
}
