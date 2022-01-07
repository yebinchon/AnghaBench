
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct RProc {int const tt; struct RProc* c; struct RProc* super; } ;
struct RObject {int const tt; struct RObject* c; struct RObject* super; } ;
struct RClass {int const tt; struct RClass* c; struct RClass* super; } ;
typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_2__ {struct RProc* super; } ;




 struct RProc* method_object_alloc (int *,int ) ;
 struct RProc* method_search_vm (int *,struct RProc**,int ) ;
 TYPE_1__* mrb_class_ptr (int ) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_iv_get (int *,int ,int ) ;
 int mrb_nil_value () ;
 int mrb_obj_class (int *,int ) ;
 int mrb_obj_iv_set (int *,struct RProc*,int ,int ) ;
 int mrb_obj_value (struct RProc*) ;
 int mrb_symbol (int ) ;
 int mrb_type (int ) ;

__attribute__((used)) static mrb_value
method_super_method(mrb_state *mrb, mrb_value self)
{
  mrb_value recv = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "@recv"));
  mrb_value klass = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "@klass"));
  mrb_value owner = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "@owner"));
  mrb_value name = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "@name"));
  struct RClass *super, *rklass;
  struct RProc *proc;
  struct RObject *me;

  switch (mrb_type(klass)) {
    case 128:
      super = mrb_class_ptr(klass)->super->super;
      break;
    case 129:
      super = mrb_class_ptr(klass)->super;
      break;
    default:
      super = mrb_class_ptr(owner)->super;
      break;
  }

  proc = method_search_vm(mrb, &super, mrb_symbol(name));
  if (!proc)
    return mrb_nil_value();

  rklass = super;
  while (super->tt == 129)
    super = super->c;

  me = method_object_alloc(mrb, mrb_obj_class(mrb, self));
  mrb_obj_iv_set(mrb, me, mrb_intern_lit(mrb, "@owner"), mrb_obj_value(super));
  mrb_obj_iv_set(mrb, me, mrb_intern_lit(mrb, "@recv"), recv);
  mrb_obj_iv_set(mrb, me, mrb_intern_lit(mrb, "@name"), name);
  mrb_obj_iv_set(mrb, me, mrb_intern_lit(mrb, "proc"), mrb_obj_value(proc));
  mrb_obj_iv_set(mrb, me, mrb_intern_lit(mrb, "@klass"), mrb_obj_value(rklass));

  return mrb_obj_value(me);
}
