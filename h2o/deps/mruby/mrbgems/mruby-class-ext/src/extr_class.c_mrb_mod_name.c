
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_class_path (int *,int ) ;
 int mrb_class_ptr (int ) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_str_dup (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_mod_name(mrb_state *mrb, mrb_value self)
{
  mrb_value name = mrb_class_path(mrb, mrb_class_ptr(self));
  return mrb_nil_p(name)? name : mrb_str_dup(mrb, name);
}
