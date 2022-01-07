
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_sym ;
typedef int mrb_state ;


 struct RClass* module_from_sym (int *,struct RClass*,int ) ;
 scalar_t__ mrb_const_defined_at (int *,int ,int ) ;
 struct RClass* mrb_module_new (int *) ;
 int mrb_obj_value (struct RClass*) ;
 int setup_class (int *,struct RClass*,struct RClass*,int ) ;

__attribute__((used)) static struct RClass*
define_module(mrb_state *mrb, mrb_sym name, struct RClass *outer)
{
  struct RClass *m;

  if (mrb_const_defined_at(mrb, mrb_obj_value(outer), name)) {
    return module_from_sym(mrb, outer, name);
  }
  m = mrb_module_new(mrb);
  setup_class(mrb, outer, m, name);

  return m;
}
