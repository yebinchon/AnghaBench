
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RProc {int dummy; } ;
typedef struct RProc RObject ;
typedef struct RProc RClass ;
typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;


 int TRUE ;
 struct RProc* method_object_alloc (int *,int ) ;
 int mrb_class_get (int *,char*) ;
 int mrb_class_ptr (int ) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_nil_value () ;
 int mrb_obj_iv_set (int *,struct RProc*,int ,int ) ;
 int mrb_obj_value (struct RProc*) ;
 int mrb_search_method_owner (int *,int ,int ,int ,struct RProc**,struct RProc**,int ) ;
 int mrb_symbol_value (int ) ;

__attribute__((used)) static mrb_value
mrb_module_instance_method(mrb_state *mrb, mrb_value self)
{
  struct RClass *owner;
  struct RProc *proc;
  struct RObject *ume;
  mrb_sym name;

  mrb_get_args(mrb, "n", &name);

  mrb_search_method_owner(mrb, mrb_class_ptr(self), self, name, &owner, &proc, TRUE);

  ume = method_object_alloc(mrb, mrb_class_get(mrb, "UnboundMethod"));
  mrb_obj_iv_set(mrb, ume, mrb_intern_lit(mrb, "@owner"), mrb_obj_value(owner));
  mrb_obj_iv_set(mrb, ume, mrb_intern_lit(mrb, "@recv"), mrb_nil_value());
  mrb_obj_iv_set(mrb, ume, mrb_intern_lit(mrb, "@name"), mrb_symbol_value(name));
  mrb_obj_iv_set(mrb, ume, mrb_intern_lit(mrb, "proc"), proc ? mrb_obj_value(proc) : mrb_nil_value());
  mrb_obj_iv_set(mrb, ume, mrb_intern_lit(mrb, "@klass"), self);

  return mrb_obj_value(ume);
}
