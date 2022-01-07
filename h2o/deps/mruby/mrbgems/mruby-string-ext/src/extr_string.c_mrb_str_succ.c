
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_str_dup (int *,int ) ;
 int mrb_str_succ_bang (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_str_succ(mrb_state *mrb, mrb_value self)
{
  mrb_value str;

  str = mrb_str_dup(mrb, self);
  mrb_str_succ_bang(mrb, str);
  return str;
}
