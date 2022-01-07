
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct RObject {int dummy; } ;
struct RClass {struct RClass* c; } ;
struct TYPE_14__ {struct RObject* top_self; struct RClass* object_class; struct RClass* proc_class; struct RClass* class_class; struct RClass* module_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_ANY () ;
 int MRB_ARGS_ARG (int,int) ;
 int MRB_ARGS_NONE () ;
 int MRB_ARGS_OPT (int) ;
 int MRB_ARGS_REQ (int) ;
 int MRB_SET_INSTANCE_TT (struct RClass*,int ) ;
 int MRB_TT_CLASS ;
 int MRB_TT_MODULE ;
 int MRB_TT_OBJECT ;
 int MRB_TT_PROC ;
 struct RClass* boot_defclass (TYPE_1__*,struct RClass*) ;
 int inspect_main ;
 int make_metaclass (TYPE_1__*,struct RClass*) ;
 int mod_define_method ;
 int mrb_bob_init ;
 int mrb_bob_not ;
 int mrb_class_initialize ;
 int mrb_class_name_class (TYPE_1__*,int *,struct RClass*,int ) ;
 int mrb_class_new_class ;
 int mrb_class_superclass ;
 struct RClass* mrb_define_class (TYPE_1__*,char*,struct RClass*) ;
 int mrb_define_class_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_define_const (TYPE_1__*,struct RClass*,char*,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_define_singleton_method (TYPE_1__*,struct RObject*,char*,int ,int ) ;
 int mrb_f_send ;
 int mrb_instance_new ;
 int mrb_intern_lit (TYPE_1__*,char*) ;
 int mrb_mod_alias ;
 int mrb_mod_ancestors ;
 int mrb_mod_append_features ;
 int mrb_mod_attr_reader ;
 int mrb_mod_attr_writer ;
 int mrb_mod_const_defined ;
 int mrb_mod_const_get ;
 int mrb_mod_const_missing ;
 int mrb_mod_const_set ;
 int mrb_mod_dummy_visibility ;
 int mrb_mod_eqq ;
 int mrb_mod_extend_object ;
 int mrb_mod_include_p ;
 int mrb_mod_initialize ;
 int mrb_mod_method_defined ;
 int mrb_mod_module_eval ;
 int mrb_mod_module_function ;
 int mrb_mod_prepend_features ;
 int mrb_mod_remove_const ;
 int mrb_mod_to_s ;
 int mrb_mod_undef ;
 scalar_t__ mrb_obj_alloc (TYPE_1__*,int ,struct RClass*) ;
 int mrb_obj_equal_m ;
 int mrb_obj_id_m ;
 int mrb_obj_instance_eval ;
 int mrb_obj_not_equal_m ;
 int mrb_obj_value (struct RClass*) ;
 int mrb_undef_method (TYPE_1__*,struct RClass*,char*) ;
 int top_define_method ;

void
mrb_init_class(mrb_state *mrb)
{
  struct RClass *bob;
  struct RClass *obj;
  struct RClass *mod;
  struct RClass *cls;


  bob = boot_defclass(mrb, 0);
  obj = boot_defclass(mrb, bob); mrb->object_class = obj;
  mod = boot_defclass(mrb, obj); mrb->module_class = mod;
  cls = boot_defclass(mrb, mod); mrb->class_class = cls;

  bob->c = obj->c = mod->c = cls->c = cls;
  make_metaclass(mrb, bob);
  make_metaclass(mrb, obj);
  make_metaclass(mrb, mod);
  make_metaclass(mrb, cls);


  mrb_define_const(mrb, bob, "BasicObject", mrb_obj_value(bob));
  mrb_define_const(mrb, obj, "BasicObject", mrb_obj_value(bob));
  mrb_define_const(mrb, obj, "Object", mrb_obj_value(obj));
  mrb_define_const(mrb, obj, "Module", mrb_obj_value(mod));
  mrb_define_const(mrb, obj, "Class", mrb_obj_value(cls));


  mrb_class_name_class(mrb, ((void*)0), bob, mrb_intern_lit(mrb, "BasicObject"));
  mrb_class_name_class(mrb, ((void*)0), obj, mrb_intern_lit(mrb, "Object"));
  mrb_class_name_class(mrb, ((void*)0), mod, mrb_intern_lit(mrb, "Module"));
  mrb_class_name_class(mrb, ((void*)0), cls, mrb_intern_lit(mrb, "Class"));

  mrb->proc_class = mrb_define_class(mrb, "Proc", mrb->object_class);
  MRB_SET_INSTANCE_TT(mrb->proc_class, MRB_TT_PROC);

  MRB_SET_INSTANCE_TT(cls, MRB_TT_CLASS);
  mrb_define_method(mrb, bob, "initialize", mrb_bob_init, MRB_ARGS_NONE());
  mrb_define_method(mrb, bob, "!", mrb_bob_not, MRB_ARGS_NONE());
  mrb_define_method(mrb, bob, "==", mrb_obj_equal_m, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, bob, "!=", mrb_obj_not_equal_m, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, bob, "__id__", mrb_obj_id_m, MRB_ARGS_NONE());
  mrb_define_method(mrb, bob, "__send__", mrb_f_send, MRB_ARGS_ANY());
  mrb_define_method(mrb, bob, "instance_eval", mrb_obj_instance_eval, MRB_ARGS_ANY());

  mrb_define_class_method(mrb, cls, "new", mrb_class_new_class, MRB_ARGS_OPT(1));
  mrb_define_method(mrb, cls, "superclass", mrb_class_superclass, MRB_ARGS_NONE());
  mrb_define_method(mrb, cls, "new", mrb_instance_new, MRB_ARGS_ANY());
  mrb_define_method(mrb, cls, "initialize", mrb_class_initialize, MRB_ARGS_OPT(1));
  mrb_define_method(mrb, cls, "inherited", mrb_bob_init, MRB_ARGS_REQ(1));

  MRB_SET_INSTANCE_TT(mod, MRB_TT_MODULE);
  mrb_define_method(mrb, mod, "extend_object", mrb_mod_extend_object, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, mod, "extended", mrb_bob_init, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, mod, "prepended", mrb_bob_init, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, mod, "prepend_features", mrb_mod_prepend_features, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, mod, "include?", mrb_mod_include_p, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, mod, "append_features", mrb_mod_append_features, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, mod, "class_eval", mrb_mod_module_eval, MRB_ARGS_ANY());
  mrb_define_method(mrb, mod, "included", mrb_bob_init, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, mod, "initialize", mrb_mod_initialize, MRB_ARGS_NONE());
  mrb_define_method(mrb, mod, "module_eval", mrb_mod_module_eval, MRB_ARGS_ANY());
  mrb_define_method(mrb, mod, "module_function", mrb_mod_module_function, MRB_ARGS_ANY());
  mrb_define_method(mrb, mod, "private", mrb_mod_dummy_visibility, MRB_ARGS_ANY());
  mrb_define_method(mrb, mod, "protected", mrb_mod_dummy_visibility, MRB_ARGS_ANY());
  mrb_define_method(mrb, mod, "public", mrb_mod_dummy_visibility, MRB_ARGS_ANY());
  mrb_define_method(mrb, mod, "attr_reader", mrb_mod_attr_reader, MRB_ARGS_ANY());
  mrb_define_method(mrb, mod, "attr_writer", mrb_mod_attr_writer, MRB_ARGS_ANY());
  mrb_define_method(mrb, mod, "to_s", mrb_mod_to_s, MRB_ARGS_NONE());
  mrb_define_method(mrb, mod, "inspect", mrb_mod_to_s, MRB_ARGS_NONE());
  mrb_define_method(mrb, mod, "alias_method", mrb_mod_alias, MRB_ARGS_ANY());
  mrb_define_method(mrb, mod, "ancestors", mrb_mod_ancestors, MRB_ARGS_NONE());
  mrb_define_method(mrb, mod, "undef_method", mrb_mod_undef, MRB_ARGS_ANY());
  mrb_define_method(mrb, mod, "const_defined?", mrb_mod_const_defined, MRB_ARGS_ARG(1,1));
  mrb_define_method(mrb, mod, "const_get", mrb_mod_const_get, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, mod, "const_set", mrb_mod_const_set, MRB_ARGS_REQ(2));
  mrb_define_method(mrb, mod, "remove_const", mrb_mod_remove_const, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, mod, "const_missing", mrb_mod_const_missing, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, mod, "method_defined?", mrb_mod_method_defined, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, mod, "define_method", mod_define_method, MRB_ARGS_ARG(1,1));
  mrb_define_method(mrb, mod, "===", mrb_mod_eqq, MRB_ARGS_REQ(1));

  mrb_undef_method(mrb, cls, "append_features");
  mrb_undef_method(mrb, cls, "extend_object");

  mrb->top_self = (struct RObject*)mrb_obj_alloc(mrb, MRB_TT_OBJECT, mrb->object_class);
  mrb_define_singleton_method(mrb, mrb->top_self, "inspect", inspect_main, MRB_ARGS_NONE());
  mrb_define_singleton_method(mrb, mrb->top_self, "to_s", inspect_main, MRB_ARGS_NONE());
  mrb_define_singleton_method(mrb, mrb->top_self, "define_method", top_define_method, MRB_ARGS_ARG(1,1));
}
