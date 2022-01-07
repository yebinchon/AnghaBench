
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int E_TYPE_ERROR ;
 int mrb_array_p (int ) ;
 int mrb_ary_replace (int *,int ,int ) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_obj_class (int *,int ) ;
 scalar_t__ mrb_obj_equal (int *,int ,int ) ;
 int mrb_obj_is_instance_of (int *,int ,int ) ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static mrb_value
mrb_struct_init_copy(mrb_state *mrb, mrb_value copy)
{
  mrb_value s;

  mrb_get_args(mrb, "o", &s);

  if (mrb_obj_equal(mrb, copy, s)) return copy;
  if (!mrb_obj_is_instance_of(mrb, s, mrb_obj_class(mrb, copy))) {
    mrb_raise(mrb, E_TYPE_ERROR, "wrong argument class");
  }
  if (!mrb_array_p(s)) {
    mrb_raise(mrb, E_TYPE_ERROR, "corrupted struct");
  }
  mrb_ary_replace(mrb, copy, s);
  return copy;
}
