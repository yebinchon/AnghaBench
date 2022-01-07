
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int __NR_eventfd2 ;
 int errno ;
 int syscall (int ,unsigned int,int) ;

int uv__eventfd2(unsigned int count, int flags) {



  return errno = ENOSYS, -1;

}
