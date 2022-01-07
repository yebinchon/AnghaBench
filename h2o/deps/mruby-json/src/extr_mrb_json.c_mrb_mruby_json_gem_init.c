
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_5__ {struct RClass* object_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_NONE () ;
 int MRB_ARGS_OPT (int) ;
 int MRB_ARGS_REQ (int) ;
 int mrb_define_class_method (TYPE_1__*,struct RClass*,char*,int ,int) ;
 struct RClass* mrb_define_module (TYPE_1__*,char*) ;
 int mrb_json_dump ;
 int mrb_json_generate ;
 int mrb_json_load ;
 int mrb_json_parse ;
 int mrb_json_pretty_generate ;
 int mrb_json_to_json ;

void
mrb_mruby_json_gem_init(mrb_state* mrb) {
  struct RClass *_class_json = mrb_define_module(mrb, "JSON");

  mrb_define_class_method(mrb, _class_json, "load", mrb_json_load, MRB_ARGS_REQ(1));
  mrb_define_class_method(mrb, _class_json, "parse", mrb_json_parse, MRB_ARGS_REQ(1));
  mrb_define_class_method(mrb, _class_json, "stringify", mrb_json_generate, MRB_ARGS_REQ(1));
  mrb_define_class_method(mrb, _class_json, "dump", mrb_json_dump, MRB_ARGS_REQ(1)|MRB_ARGS_OPT(1));
  mrb_define_class_method(mrb, _class_json, "generate", mrb_json_generate, MRB_ARGS_REQ(1));
  mrb_define_class_method(mrb, _class_json, "pretty_generate", mrb_json_pretty_generate, MRB_ARGS_REQ(1));
  mrb_define_class_method(mrb, mrb->object_class, "to_json", mrb_json_to_json, MRB_ARGS_NONE());
}
