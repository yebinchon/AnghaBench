
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int __NR_epoll_create ;
 int __NR_epoll_create1 ;
 int errno ;
 int syscall (int ,int) ;

int
epoll_create(int size)
{







 return (syscall(__NR_epoll_create, size));

}
