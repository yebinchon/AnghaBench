
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uv__statx {int dummy; } ;


 int ENOSYS ;
 int __NR_statx ;
 int errno ;
 int syscall (int ,int,char const*,int,unsigned int,struct uv__statx*) ;

int uv__statx(int dirfd,
              const char* path,
              int flags,
              unsigned int mask,
              struct uv__statx* statxbuf) {






  return errno = ENOSYS, -1;

}
