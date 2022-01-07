
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_str_cat_cstr (int *,int ,char*) ;

__attribute__((used)) static mrb_value
pretty_cat(mrb_state* mrb, mrb_value str, int pretty) {
  int i;
  str = mrb_str_cat_cstr(mrb, str, "\n");
  for (i = 0; i < pretty; i++) str = mrb_str_cat_cstr(mrb, str, "  ");
  return str;
}
