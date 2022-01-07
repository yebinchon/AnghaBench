
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 int mrb_fd_cloexec (int *,int) ;
 int pipe (int*) ;

__attribute__((used)) static int
mrb_cloexec_pipe(mrb_state *mrb, int fildes[2])
{
  int ret;
  ret = pipe(fildes);
  if (ret == -1)
    return -1;
  mrb_fd_cloexec(mrb, fildes[0]);
  mrb_fd_cloexec(mrb, fildes[1]);
  return ret;
}
