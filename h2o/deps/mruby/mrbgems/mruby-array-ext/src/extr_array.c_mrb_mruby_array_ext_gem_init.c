
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_4__ {struct RClass* array_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_ANY () ;
 int MRB_ARGS_REQ (int) ;
 int mrb_ary_assoc ;
 int mrb_ary_at ;
 int mrb_ary_rassoc ;
 int mrb_ary_slice_bang ;
 int mrb_ary_values_at ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;

void
mrb_mruby_array_ext_gem_init(mrb_state* mrb)
{
  struct RClass * a = mrb->array_class;

  mrb_define_method(mrb, a, "assoc", mrb_ary_assoc, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, a, "at", mrb_ary_at, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, a, "rassoc", mrb_ary_rassoc, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, a, "values_at", mrb_ary_values_at, MRB_ARGS_ANY());
  mrb_define_method(mrb, a, "slice!", mrb_ary_slice_bang, MRB_ARGS_ANY());
}
