
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_bug (int *,char*,int ) ;
 int mrb_string_type (int *,int ) ;
 int mrb_sym2str (int *,int ) ;
 int mrb_symbol (int ) ;
 scalar_t__ mrb_symbol_p (int ) ;
 scalar_t__ mrb_undef_p (int ) ;

__attribute__((used)) static mrb_value
reg_operand(mrb_state *mrb, mrb_value obj) {
  mrb_value ret;

  if (mrb_symbol_p(obj)) {
    ret = mrb_sym2str(mrb, mrb_symbol(obj));
    if (mrb_undef_p(ret)) {
      mrb_bug(mrb, "can not intern %S", obj);
    }
  }
  else {
    ret = mrb_string_type(mrb, obj);
  }
  return ret;
}
