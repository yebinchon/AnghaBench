
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int ENOSYS ;
 int __NR_getrandom ;
 int errno ;
 int syscall (int ,void*,size_t,unsigned int) ;

ssize_t uv__getrandom(void* buf, size_t buflen, unsigned flags) {



  return errno = ENOSYS, -1;

}
