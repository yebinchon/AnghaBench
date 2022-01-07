
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int OnigRegex ;


 int Data_Get_Struct (int *,int ,int *,int ) ;
 scalar_t__ ONIG_ENCODING_ASCII ;
 int RSTRING_LEN (int ) ;
 scalar_t__ RSTRING_PTR (int ) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_iv_get (int *,int ,int ) ;
 int mrb_onig_regexp_type ;
 int mrb_str_cat_cstr (int *,int ,char*) ;
 int mrb_str_cat_lit (int *,int ,char*) ;
 int mrb_str_new_lit (int *,char*) ;
 scalar_t__ onig_get_encoding (int ) ;
 int onig_get_options (int ) ;
 scalar_t__* option_to_str (char*,int ) ;
 int regexp_expr_str (int *,int ,char const*,int ) ;

__attribute__((used)) static mrb_value
onig_regexp_inspect(mrb_state *mrb, mrb_value self) {
  OnigRegex reg;
  Data_Get_Struct(mrb, self, &mrb_onig_regexp_type, reg);
  mrb_value str = mrb_str_new_lit(mrb, "/");
  mrb_value src = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "@source"));
  regexp_expr_str(mrb, str, (const char *)RSTRING_PTR(src), RSTRING_LEN(src));
  mrb_str_cat_lit(mrb, str, "/");
  char opts[4];
  if (*option_to_str(opts, onig_get_options(reg))) {
    mrb_str_cat_cstr(mrb, str, opts);
  }
  if (onig_get_encoding(reg) == ONIG_ENCODING_ASCII) {
    mrb_str_cat_lit(mrb, str, "n");
  }
  return str;
}
