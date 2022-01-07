
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_bool ;


 int mrb_fixnum (int ) ;
 scalar_t__ mrb_fixnum_p (int ) ;
 int mrb_funcall (int *,int ,char*,int,int ) ;

__attribute__((used)) static mrb_bool
r_gt(mrb_state *mrb, mrb_value a, mrb_value b)
{
  mrb_value r = mrb_funcall(mrb, a, "<=>", 1, b);


  return mrb_fixnum_p(r) && mrb_fixnum(r) == 1;
}
