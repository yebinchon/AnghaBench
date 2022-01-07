
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_each_object_data {scalar_t__ count; int * target_module; int block; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_ARGUMENT_ERROR ;
 int * mrb_class_ptr (int ) ;
 int mrb_fixnum_value (scalar_t__) ;
 int mrb_get_args (int *,char*,int *,int *) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_objspace_each_objects (int *,int ,struct os_each_object_data*) ;
 int mrb_raise (int *,int ,char*) ;
 int os_each_object_cb ;

__attribute__((used)) static mrb_value
os_each_object(mrb_state *mrb, mrb_value self)
{
  mrb_value cls = mrb_nil_value();
  struct os_each_object_data d;
  mrb_get_args(mrb, "&|C", &d.block, &cls);

  if (mrb_nil_p(d.block)) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "Expected block in ObjectSpace.each_object.");
  }

  d.target_module = mrb_nil_p(cls) ? ((void*)0) : mrb_class_ptr(cls);
  d.count = 0;
  mrb_objspace_each_objects(mrb, os_each_object_cb, &d);
  return mrb_fixnum_value(d.count);
}
