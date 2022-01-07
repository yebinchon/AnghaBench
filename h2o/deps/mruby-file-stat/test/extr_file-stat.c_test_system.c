
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_get_args (int *,char*,char**) ;
 int mrb_nil_value () ;
 int system (char*) ;

__attribute__((used)) static mrb_value
test_system(mrb_state *mrb, mrb_value klass)
{
  char *cmd = ((void*)0);
  mrb_get_args(mrb, "z", &cmd);
  system(cmd);
  return mrb_nil_value();
}
