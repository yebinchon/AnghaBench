
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_obj_class (int *,int ) ;
 int mrb_obj_value (int ) ;
 int mrb_struct_s_members_m (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_struct_members(mrb_state *mrb, mrb_value obj)
{
  return mrb_struct_s_members_m(mrb, mrb_obj_value(mrb_obj_class(mrb, obj)));
}
