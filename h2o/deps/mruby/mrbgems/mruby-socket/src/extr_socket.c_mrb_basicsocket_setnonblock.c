
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_bool ;


 int FIONBIO ;
 int F_GETFL ;
 int F_SETFL ;
 int NO_ERROR ;
 int O_NONBLOCK ;
 int fcntl (int,int ,int) ;
 int ioctlsocket (int,int ,int*) ;
 int mrb_get_args (int *,char*,scalar_t__*) ;
 int mrb_nil_value () ;
 int mrb_sys_fail (int *,char*) ;
 int socket_fd (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_basicsocket_setnonblock(mrb_state *mrb, mrb_value self)
{
  int fd, flags;
  mrb_bool nonblocking;




  mrb_get_args(mrb, "b", &nonblocking);
  fd = socket_fd(mrb, self);





  flags = fcntl(fd, F_GETFL, 0);
  if (flags == 1)
    mrb_sys_fail(mrb, "fcntl");
  if (nonblocking)
    flags |= O_NONBLOCK;
  else
    flags &= ~O_NONBLOCK;
  if (fcntl(fd, F_SETFL, flags) == -1)
    mrb_sys_fail(mrb, "fcntl");

  return mrb_nil_value();
}
