
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ mrb_fixnum (int ) ;
 scalar_t__ mrb_fixnum_p (int ) ;
 int mrb_gv_get (int *,int ) ;
 int mrb_intern_lit (int *,char*) ;

__attribute__((used)) static int
check_error(mrb_state *mrb)
{


  mrb_value ko_test = mrb_gv_get(mrb, mrb_intern_lit(mrb, "$ko_test"));
  mrb_value kill_test = mrb_gv_get(mrb, mrb_intern_lit(mrb, "$kill_test"));

  return mrb_fixnum_p(ko_test) && mrb_fixnum(ko_test) == 0 && mrb_fixnum_p(kill_test) && mrb_fixnum(kill_test) == 0;
}
