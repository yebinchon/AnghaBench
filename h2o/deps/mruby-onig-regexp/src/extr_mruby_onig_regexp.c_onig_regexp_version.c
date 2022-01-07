
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_str_new_cstr (int *,int ) ;
 int onig_version () ;

__attribute__((used)) static mrb_value
onig_regexp_version(mrb_state* mrb, mrb_value self) {
  (void)self;
  return mrb_str_new_cstr(mrb, onig_version());
}
