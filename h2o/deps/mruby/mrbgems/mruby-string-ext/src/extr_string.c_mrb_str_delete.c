
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_get_args (int *,char*,int *) ;
 int mrb_str_dup (int *,int ) ;
 int str_delete (int *,int ,int ) ;

__attribute__((used)) static mrb_value
mrb_str_delete(mrb_state *mrb, mrb_value str)
{
  mrb_value pat;
  mrb_value dup;

  mrb_get_args(mrb, "S", &pat);
  dup = mrb_str_dup(mrb, str);
  str_delete(mrb, dup, pat);
  return dup;
}
