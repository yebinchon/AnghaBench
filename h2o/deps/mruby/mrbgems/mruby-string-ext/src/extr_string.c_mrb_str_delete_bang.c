
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_get_args (int *,char*,int *) ;
 int mrb_nil_value () ;
 scalar_t__ str_delete (int *,int ,int ) ;

__attribute__((used)) static mrb_value
mrb_str_delete_bang(mrb_state *mrb, mrb_value str)
{
  mrb_value pat;

  mrb_get_args(mrb, "S", &pat);
  if (str_delete(mrb, str, pat)) {
    return str;
  }
  return mrb_nil_value();
}
