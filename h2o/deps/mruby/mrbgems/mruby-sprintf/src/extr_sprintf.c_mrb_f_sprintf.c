
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int E_ARGUMENT_ERROR ;
 int mrb_get_args (int *,char*,int **,scalar_t__*) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_str_format (int *,scalar_t__,int *,int ) ;

mrb_value
mrb_f_sprintf(mrb_state *mrb, mrb_value obj)
{
  mrb_int argc;
  mrb_value *argv;

  mrb_get_args(mrb, "*", &argv, &argc);

  if (argc <= 0) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "too few arguments");
    return mrb_nil_value();
  }
  else {
    return mrb_str_format(mrb, argc - 1, argv + 1, argv[0]);
  }
}
