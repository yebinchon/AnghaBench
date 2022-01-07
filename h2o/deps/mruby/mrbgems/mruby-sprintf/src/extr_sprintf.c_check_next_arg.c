
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 int E_ARGUMENT_ERROR ;
 int mrb_fixnum_value (int) ;
 int mrb_raisef (int *,int ,char*,int ) ;

__attribute__((used)) static void
check_next_arg(mrb_state *mrb, int posarg, int nextarg)
{
  switch (posarg) {
  case -1:
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "unnumbered(%S) mixed with numbered", mrb_fixnum_value(nextarg));
    break;
  case -2:
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "unnumbered(%S) mixed with named", mrb_fixnum_value(nextarg));
    break;
  default:
    break;
  }
}
