
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ MRB_TT_SCLASS ;
 int mrb_bool_value (int) ;
 scalar_t__ mrb_type (int ) ;

__attribute__((used)) static mrb_value
mrb_mod_singleton_class_p(mrb_state *mrb, mrb_value self)
{
  return mrb_bool_value(mrb_type(self) == MRB_TT_SCLASS);
}
