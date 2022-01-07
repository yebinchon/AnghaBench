
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_7__ {struct RClass* module_class; struct RClass* kernel_module; int object_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_ANY () ;
 int MRB_ARGS_NONE () ;
 int MRB_ARGS_REQ (int) ;
 int method_arity ;
 int method_call ;
 int method_eql ;
 int method_parameters ;
 int method_source_location ;
 int method_super_method ;
 int method_to_s ;
 int method_unbind ;
 int mrb_define_alias (TYPE_1__*,struct RClass*,char*,char*) ;
 struct RClass* mrb_define_class (TYPE_1__*,char*,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_kernel_method ;
 int mrb_module_instance_method ;
 int mrb_undef_class_method (TYPE_1__*,struct RClass*,char*) ;
 int unbound_method_bind ;

void
mrb_mruby_method_gem_init(mrb_state* mrb)
{
  struct RClass *unbound_method = mrb_define_class(mrb, "UnboundMethod", mrb->object_class);
  struct RClass *method = mrb_define_class(mrb, "Method", mrb->object_class);

  mrb_undef_class_method(mrb, unbound_method, "new");
  mrb_define_method(mrb, unbound_method, "bind", unbound_method_bind, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, unbound_method, "super_method", method_super_method, MRB_ARGS_NONE());
  mrb_define_method(mrb, unbound_method, "==", method_eql, MRB_ARGS_REQ(1));
  mrb_define_alias(mrb, unbound_method, "eql?", "==");
  mrb_define_method(mrb, unbound_method, "to_s", method_to_s, MRB_ARGS_NONE());
  mrb_define_method(mrb, unbound_method, "inspect", method_to_s, MRB_ARGS_NONE());
  mrb_define_method(mrb, unbound_method, "arity", method_arity, MRB_ARGS_NONE());
  mrb_define_method(mrb, unbound_method, "source_location", method_source_location, MRB_ARGS_NONE());
  mrb_define_method(mrb, unbound_method, "parameters", method_parameters, MRB_ARGS_NONE());

  mrb_undef_class_method(mrb, method, "new");
  mrb_define_method(mrb, method, "==", method_eql, MRB_ARGS_REQ(1));
  mrb_define_alias(mrb, method, "eql?", "==");
  mrb_define_method(mrb, method, "to_s", method_to_s, MRB_ARGS_NONE());
  mrb_define_method(mrb, method, "inspect", method_to_s, MRB_ARGS_NONE());
  mrb_define_method(mrb, method, "call", method_call, MRB_ARGS_ANY());
  mrb_define_alias(mrb, method, "[]", "call");
  mrb_define_method(mrb, method, "unbind", method_unbind, MRB_ARGS_NONE());
  mrb_define_method(mrb, method, "super_method", method_super_method, MRB_ARGS_NONE());
  mrb_define_method(mrb, method, "arity", method_arity, MRB_ARGS_NONE());
  mrb_define_method(mrb, method, "source_location", method_source_location, MRB_ARGS_NONE());
  mrb_define_method(mrb, method, "parameters", method_parameters, MRB_ARGS_NONE());

  mrb_define_method(mrb, mrb->kernel_module, "method", mrb_kernel_method, MRB_ARGS_REQ(1));

  mrb_define_method(mrb, mrb->module_class, "instance_method", mrb_module_instance_method, MRB_ARGS_REQ(1));
}
