
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RObject {int dummy; } ;
typedef int const mrb_value ;
typedef int mrb_state ;


 int mrb_bool (int const) ;
 int const mrb_bool_value (int ) ;
 scalar_t__ mrb_class_get (int *,char*) ;
 int mrb_get_args (int *,char*,int const*) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_obj_iv_set (int *,struct RObject*,int ,int const) ;
 int onig_regexp_clear_global_variables (int *,int const) ;

__attribute__((used)) static mrb_value
onig_regexp_set_set_global_variables(mrb_state* mrb, mrb_value self) {
  mrb_value arg;
  mrb_get_args(mrb, "o", &arg);
  mrb_value const ret = mrb_bool_value(mrb_bool(arg));
  mrb_obj_iv_set(mrb, (struct RObject*)mrb_class_get(mrb, "OnigRegexp"),
                 mrb_intern_lit(mrb, "@set_global_variables"), ret);
  onig_regexp_clear_global_variables(mrb, self);
  return ret;
}
