
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_4__ {struct RClass* class_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_NONE () ;
 int class_allocate ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;

void mrb_mruby_class_new_fiber_safe_gem_init(mrb_state* mrb)
{
    struct RClass *cls = mrb->class_class;
    mrb_define_method(mrb, cls, "allocate", class_allocate, MRB_ARGS_NONE());
}
