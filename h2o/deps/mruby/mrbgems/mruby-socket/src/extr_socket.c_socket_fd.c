
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ mrb_fixnum (int ) ;
 int mrb_funcall (int *,int ,char*,int ) ;

__attribute__((used)) static int
socket_fd(mrb_state *mrb, mrb_value sock)
{
  return (int)mrb_fixnum(mrb_funcall(mrb, sock, "fileno", 0));
}
