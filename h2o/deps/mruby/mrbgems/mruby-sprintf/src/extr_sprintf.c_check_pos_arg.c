
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;
typedef int mrb_int ;


 int E_ARGUMENT_ERROR ;
 int mrb_fixnum_value (int) ;
 int mrb_raisef (int *,int ,char*,int ,...) ;

__attribute__((used)) static void
check_pos_arg(mrb_state *mrb, mrb_int posarg, mrb_int n)
{
  if (posarg > 0) {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "numbered(%S) after unnumbered(%S)",
               mrb_fixnum_value(n), mrb_fixnum_value(posarg));
  }
  if (posarg == -2) {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "numbered(%S) after named", mrb_fixnum_value(n));
  }
  if (n < 1) {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "invalid index - %S$", mrb_fixnum_value(n));
  }
}
