
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int accept (int,int *,int ) ;
 int errno ;

int os_accept_connection(int fd)
{
 int new;

 new = accept(fd, ((void*)0), 0);
 if (new < 0)
  return -errno;
 return new;
}
