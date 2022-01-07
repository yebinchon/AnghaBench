
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_check_intern_str (int *,int ) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_int (int *,int ) ;
 int mrb_intern_str (int *,int ) ;
 int mrb_name_error (int *,int ,char*,int ) ;
 scalar_t__ mrb_nil_p (int ) ;
 scalar_t__ mrb_string_p (int ) ;
 int mrb_symbol (int ) ;
 scalar_t__ mrb_symbol_p (int ) ;
 int struct_aref_int (int *,int ,int ) ;
 int struct_aref_sym (int *,int ,int ) ;

__attribute__((used)) static mrb_value
mrb_struct_aref(mrb_state *mrb, mrb_value s)
{
  mrb_value idx;

  mrb_get_args(mrb, "o", &idx);
  if (mrb_string_p(idx)) {
    mrb_value sym = mrb_check_intern_str(mrb, idx);

    if (mrb_nil_p(sym)) {
      mrb_name_error(mrb, mrb_intern_str(mrb, idx), "no member '%S' in struct", idx);
    }
    idx = sym;
  }
  if (mrb_symbol_p(idx)) {
    return struct_aref_sym(mrb, s, mrb_symbol(idx));
  }
  return struct_aref_int(mrb, s, mrb_int(mrb, idx));
}
