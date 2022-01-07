
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int listen (int,int) ;
 int mrb_get_args (int *,char*,scalar_t__*,scalar_t__*) ;
 int mrb_nil_value () ;
 int mrb_sys_fail (int *,char*) ;

__attribute__((used)) static mrb_value
mrb_socket_listen(mrb_state *mrb, mrb_value klass)
{
  mrb_int backlog, s;

  mrb_get_args(mrb, "ii", &s, &backlog);
  if (listen((int)s, (int)backlog) == -1) {
    mrb_sys_fail(mrb, "listen");
  }
  return mrb_nil_value();
}
