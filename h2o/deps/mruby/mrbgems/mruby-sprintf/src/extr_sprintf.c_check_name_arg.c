
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;
typedef int mrb_int ;


 int E_ARGUMENT_ERROR ;
 int mrb_fixnum_value (int) ;
 int mrb_raisef (int *,int ,char*,int ,...) ;
 int mrb_str_new (int *,char const*,int ) ;

__attribute__((used)) static void
check_name_arg(mrb_state *mrb, int posarg, const char *name, mrb_int len)
{
  if (posarg > 0) {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "named%S after unnumbered(%S)",
               mrb_str_new(mrb, (name), (len)), mrb_fixnum_value(posarg));
  }
  if (posarg == -1) {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "named%S after numbered", mrb_str_new(mrb, (name), (len)));
  }
}
