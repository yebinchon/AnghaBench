
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
typedef int OnigUChar ;
typedef int OnigRegex ;


 int Data_Get_Struct (int *,int ,int *,int ) ;
 scalar_t__ ONIG_MISMATCH ;
 int RSTRING_LEN (int ) ;
 scalar_t__ RSTRING_PTR (int ) ;
 int mrb_bool_value (int) ;
 int mrb_get_args (int *,char*,int *,scalar_t__*) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_onig_regexp_type ;
 scalar_t__ onig_search (int ,int const*,int const*,int const*,int const*,int *,int ) ;
 int reg_operand (int *,int ) ;

__attribute__((used)) static mrb_value
onig_regexp_match_p(mrb_state *mrb, mrb_value self) {
  mrb_value str = mrb_nil_value();
  mrb_int pos = 0;
  OnigRegex reg;
  OnigUChar const* str_ptr;

  mrb_get_args(mrb, "o|i", &str, &pos);
  if (mrb_nil_p(str)) {
    return mrb_nil_value();
  }
  str = reg_operand(mrb, str);
  if (pos < 0 || (pos > 0 && pos >= RSTRING_LEN(str))) {
    return mrb_nil_value();
  }

  Data_Get_Struct(mrb, self, &mrb_onig_regexp_type, reg);
  str_ptr = (OnigUChar const*)RSTRING_PTR(str);
  return mrb_bool_value(onig_search(
      reg, str_ptr, str_ptr + RSTRING_LEN(str),
      str_ptr + pos, str_ptr + RSTRING_LEN(str), ((void*)0), 0) != ONIG_MISMATCH);
}
