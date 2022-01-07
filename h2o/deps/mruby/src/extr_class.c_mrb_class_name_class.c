
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct RObject {int dummy; } ;
struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
struct TYPE_9__ {struct RClass* object_class; } ;
typedef TYPE_1__ mrb_state ;


 int mrb_class_path (TYPE_1__*,struct RClass*) ;
 int mrb_intern_lit (TYPE_1__*,char*) ;
 scalar_t__ mrb_nil_p (int ) ;
 scalar_t__ mrb_obj_iv_defined (TYPE_1__*,struct RObject*,int ) ;
 int mrb_obj_iv_set (TYPE_1__*,struct RObject*,int ,int ) ;
 int mrb_obj_value (struct RClass*) ;
 int mrb_str_cat_cstr (TYPE_1__*,int ,char*) ;
 char* mrb_sym2name (TYPE_1__*,int ) ;
 int mrb_symbol_value (int ) ;

void
mrb_class_name_class(mrb_state *mrb, struct RClass *outer, struct RClass *c, mrb_sym id)
{
  mrb_value name;
  mrb_sym nsym = mrb_intern_lit(mrb, "__classname__");

  if (mrb_obj_iv_defined(mrb, (struct RObject*)c, nsym)) return;
  if (outer == ((void*)0) || outer == mrb->object_class) {
    name = mrb_symbol_value(id);
  }
  else {
    name = mrb_class_path(mrb, outer);
    if (mrb_nil_p(name)) {
      if (outer != mrb->object_class && outer != c) {
        mrb_obj_iv_set(mrb, (struct RObject*)c, mrb_intern_lit(mrb, "__outer__"),
                       mrb_obj_value(outer));
      }
      return;
    }
    mrb_str_cat_cstr(mrb, name, "::");
    mrb_str_cat_cstr(mrb, name, mrb_sym2name(mrb, id));
  }
  mrb_obj_iv_set(mrb, (struct RObject*)c, nsym, name);
}
