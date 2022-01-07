
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int E_TYPE_ERROR ;
 int mrb_bool_value (int) ;
 scalar_t__ mrb_class_get (int *,char*) ;
 int mrb_get_args (int *,char*,int *) ;
 scalar_t__ mrb_istruct_ptr (int ) ;
 scalar_t__ mrb_obj_class (int *,int ) ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static mrb_value
istruct_test_test_receive(mrb_state *mrb, mrb_value self)
{
  mrb_value object;
  mrb_get_args(mrb, "o", &object);
  if (mrb_obj_class(mrb, object) != mrb_class_get(mrb, "InlineStructTest"))
  {
    mrb_raise(mrb, E_TYPE_ERROR, "Expected InlineStructTest");
  }
  return mrb_bool_value(((char*)mrb_istruct_ptr(object))[0] == 's');
}
