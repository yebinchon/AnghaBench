
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct RObject {int dummy; } ;
struct RClass {int dummy; } ;
struct TYPE_9__ {int object_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_NONE () ;
 int MRB_ARGS_REQ (int) ;
 int MRB_TT_OBJECT ;
 int mrb_class_get (TYPE_1__*,char*) ;
 int mrb_define_global_const (TYPE_1__*,char*,int ) ;
 int mrb_define_singleton_method (TYPE_1__*,struct RObject*,char*,int ,int ) ;
 int mrb_env_aget ;
 int mrb_env_aset ;
 int mrb_env_has_key ;
 int mrb_env_inspect ;
 int mrb_env_keys ;
 int mrb_env_size ;
 int mrb_env_to_a ;
 int mrb_env_to_hash ;
 int mrb_env_to_s ;
 int mrb_env_values ;
 int mrb_include_module (TYPE_1__*,struct RClass*,int ) ;
 int mrb_module_get (TYPE_1__*,char*) ;
 scalar_t__ mrb_obj_alloc (TYPE_1__*,int ,int ) ;
 int mrb_obj_value (struct RObject*) ;

void
mrb_mruby_env_gem_init(mrb_state *mrb)
{
  struct RObject *e;

  e = (struct RObject*) mrb_obj_alloc(mrb, MRB_TT_OBJECT, mrb->object_class);



  mrb_include_module(mrb, (struct RClass*)e, mrb_class_get(mrb, "Enumerable"));


  mrb_define_singleton_method(mrb, e,"[]", mrb_env_aget, MRB_ARGS_REQ(1));
  mrb_define_singleton_method(mrb, e,"[]=", mrb_env_aset, MRB_ARGS_REQ(2));
  mrb_define_singleton_method(mrb, e,"has_key?", mrb_env_has_key, MRB_ARGS_REQ(1));
  mrb_define_singleton_method(mrb, e,"inspect", mrb_env_inspect, MRB_ARGS_NONE());
  mrb_define_singleton_method(mrb, e,"keys", mrb_env_keys, MRB_ARGS_NONE());
  mrb_define_singleton_method(mrb, e,"size", mrb_env_size, MRB_ARGS_NONE());
  mrb_define_singleton_method(mrb, e,"store", mrb_env_aset, MRB_ARGS_REQ(2));
  mrb_define_singleton_method(mrb, e,"to_a", mrb_env_to_a, MRB_ARGS_NONE());
  mrb_define_singleton_method(mrb, e,"to_hash", mrb_env_to_hash, MRB_ARGS_NONE());
  mrb_define_singleton_method(mrb, e,"to_s", mrb_env_to_s, MRB_ARGS_NONE());
  mrb_define_singleton_method(mrb, e,"values", mrb_env_values, MRB_ARGS_NONE());

  mrb_define_global_const(mrb, "ENV", mrb_obj_value(e));
}
