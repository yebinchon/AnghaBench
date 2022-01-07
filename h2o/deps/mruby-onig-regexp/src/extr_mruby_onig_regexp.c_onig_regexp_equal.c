
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int OnigRegex ;


 int Data_Get_Struct (int *,int ,int *,int ) ;
 int E_RUNTIME_ERROR ;
 int mrb_class_get (int *,char*) ;
 int mrb_false_value () ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_iv_get (int *,int ,int ) ;
 scalar_t__ mrb_nil_p (int ) ;
 scalar_t__ mrb_obj_equal (int *,int ,int ) ;
 int mrb_obj_is_kind_of (int *,int ,int ) ;
 int mrb_onig_regexp_type ;
 int mrb_raise (int *,int ,char*) ;
 scalar_t__ mrb_str_equal (int *,int ,int ) ;
 int mrb_true_value () ;
 scalar_t__ onig_get_options (int ) ;

__attribute__((used)) static mrb_value
onig_regexp_equal(mrb_state *mrb, mrb_value self) {
  mrb_value other;
  OnigRegex self_reg, other_reg;

  mrb_get_args(mrb, "o", &other);
  if (mrb_obj_equal(mrb, self, other)){
    return mrb_true_value();
  }
  if (mrb_nil_p(other)) {
    return mrb_false_value();
  }
  if (!mrb_obj_is_kind_of(mrb, other, mrb_class_get(mrb, "OnigRegexp"))) {
    return mrb_false_value();
  }
  Data_Get_Struct(mrb, self, &mrb_onig_regexp_type, self_reg);
  Data_Get_Struct(mrb, other, &mrb_onig_regexp_type, other_reg);

  if (!self_reg || !other_reg){
      mrb_raise(mrb, E_RUNTIME_ERROR, "Invalid OnigRegexp");
  }
  if (onig_get_options(self_reg) != onig_get_options(other_reg)){
      return mrb_false_value();
  }
  return mrb_str_equal(mrb, mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "@source")), mrb_iv_get(mrb, other, mrb_intern_lit(mrb, "@source"))) ?
      mrb_true_value() : mrb_false_value();
}
