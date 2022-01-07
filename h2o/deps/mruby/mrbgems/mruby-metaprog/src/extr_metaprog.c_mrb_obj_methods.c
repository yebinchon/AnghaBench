
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_method_flag_t ;
typedef int mrb_bool ;


 int mrb_class (int *,int ) ;
 int mrb_class_instance_method_list (int *,int ,int ,int ) ;

__attribute__((used)) static mrb_value
mrb_obj_methods(mrb_state *mrb, mrb_bool recur, mrb_value obj, mrb_method_flag_t flag)
{
  return mrb_class_instance_method_list(mrb, recur, mrb_class(mrb, obj), 0);
}
