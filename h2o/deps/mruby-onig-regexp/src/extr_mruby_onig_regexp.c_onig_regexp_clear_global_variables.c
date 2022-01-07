
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_gv_remove (int *,int ) ;
 int mrb_intern (int *,char const*,int) ;
 int mrb_intern_lit (int *,char*) ;

__attribute__((used)) static mrb_value
onig_regexp_clear_global_variables(mrb_state* mrb, mrb_value self) {
  mrb_gv_remove(mrb, mrb_intern_lit(mrb, "$~"));
  mrb_gv_remove(mrb, mrb_intern_lit(mrb, "$&"));
  mrb_gv_remove(mrb, mrb_intern_lit(mrb, "$`"));
  mrb_gv_remove(mrb, mrb_intern_lit(mrb, "$'"));
  mrb_gv_remove(mrb, mrb_intern_lit(mrb, "$+"));

  int idx;
  for(idx = 1; idx < 10; ++idx) {
    char const n[] = { '$', '0' + idx };
    mrb_gv_remove(mrb, mrb_intern(mrb, n, 2));
  }

  return self;
}
