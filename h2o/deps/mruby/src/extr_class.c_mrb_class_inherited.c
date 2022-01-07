
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct RClass {int flags; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
struct TYPE_7__ {struct RClass* object_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_FL_CLASS_IS_INHERITED ;
 int mc_clear_by_class (TYPE_1__*,struct RClass*) ;
 int mrb_bob_init ;
 int mrb_func_basic_p (TYPE_1__*,int ,int ,int ) ;
 int mrb_funcall_argv (TYPE_1__*,int ,int ,int,int *) ;
 int mrb_intern_lit (TYPE_1__*,char*) ;
 int mrb_obj_value (struct RClass*) ;

__attribute__((used)) static void
mrb_class_inherited(mrb_state *mrb, struct RClass *super, struct RClass *klass)
{
  mrb_value s;
  mrb_sym mid;

  if (!super)
    super = mrb->object_class;
  super->flags |= MRB_FL_CLASS_IS_INHERITED;
  s = mrb_obj_value(super);
  mc_clear_by_class(mrb, klass);
  mid = mrb_intern_lit(mrb, "inherited");
  if (!mrb_func_basic_p(mrb, s, mid, mrb_bob_init)) {
    mrb_value c = mrb_obj_value(klass);
    mrb_funcall_argv(mrb, s, mid, 1, &c);
  }
}
