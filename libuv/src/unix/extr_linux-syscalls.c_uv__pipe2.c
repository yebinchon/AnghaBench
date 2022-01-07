
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int __NR_pipe2 ;
 int __msan_unpoison (int*,int) ;
 int errno ;
 int syscall (int ,int*,int) ;

int uv__pipe2(int pipefd[2], int flags) {
  return errno = ENOSYS, -1;

}
