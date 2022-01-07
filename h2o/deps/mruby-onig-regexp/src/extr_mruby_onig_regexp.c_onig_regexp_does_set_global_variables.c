
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RObject {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ mrb_class_get (int *,char*) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_obj_iv_get (int *,struct RObject*,int ) ;

__attribute__((used)) static mrb_value
onig_regexp_does_set_global_variables(mrb_state* mrb, mrb_value self) {
  (void)self;
  return mrb_obj_iv_get(mrb, (struct RObject*)mrb_class_get(mrb, "OnigRegexp"),
                        mrb_intern_lit(mrb, "@set_global_variables"));
}
