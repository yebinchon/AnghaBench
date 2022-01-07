
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int __NR_dup3 ;
 int errno ;
 int syscall (int ,int,int,int) ;

int uv__dup3(int oldfd, int newfd, int flags) {



  return errno = ENOSYS, -1;

}
