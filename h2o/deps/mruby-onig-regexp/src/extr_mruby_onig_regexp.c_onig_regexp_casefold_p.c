
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int OnigRegex ;


 int Data_Get_Struct (int *,int ,int *,int ) ;
 int ONIG_OPTION_IGNORECASE ;
 int mrb_false_value () ;
 int mrb_onig_regexp_type ;
 int mrb_true_value () ;
 int onig_get_options (int ) ;

__attribute__((used)) static mrb_value
onig_regexp_casefold_p(mrb_state *mrb, mrb_value self) {
  OnigRegex reg;

  Data_Get_Struct(mrb, self, &mrb_onig_regexp_type, reg);
  return (onig_get_options(reg) & ONIG_OPTION_IGNORECASE) ? mrb_true_value() : mrb_false_value();
}
