
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RObject {int dummy; } ;
struct RClass {int dummy; } ;
typedef int mrb_sym ;
typedef int mrb_state ;


 int mrb_class_name_class (int *,struct RClass*,struct RClass*,int ) ;
 int mrb_obj_iv_set (int *,struct RObject*,int ,int ) ;
 int mrb_obj_value (struct RClass*) ;

__attribute__((used)) static void
setup_class(mrb_state *mrb, struct RClass *outer, struct RClass *c, mrb_sym id)
{
  mrb_class_name_class(mrb, outer, c, id);
  mrb_obj_iv_set(mrb, (struct RObject*)outer, id, mrb_obj_value(c));
}
