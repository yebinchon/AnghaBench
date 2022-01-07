
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct RClass {scalar_t__ tt; struct RClass* super; TYPE_1__* c; } ;
typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_2__ {scalar_t__ tt; } ;


 int MRB_CLASS_ORIGIN (struct RClass*) ;
 scalar_t__ MRB_TT_ICLASS ;
 scalar_t__ MRB_TT_MODULE ;
 int mrb_ary_new (int *) ;
 int mrb_ary_push (int *,int ,int ) ;
 struct RClass* mrb_class_ptr (int ) ;
 int mrb_obj_value (TYPE_1__*) ;

__attribute__((used)) static mrb_value
mrb_mod_included_modules(mrb_state *mrb, mrb_value self)
{
  mrb_value result;
  struct RClass *c = mrb_class_ptr(self);
  struct RClass *origin = c;

  MRB_CLASS_ORIGIN(origin);
  result = mrb_ary_new(mrb);
  while (c) {
    if (c != origin && c->tt == MRB_TT_ICLASS) {
      if (c->c->tt == MRB_TT_MODULE) {
        mrb_ary_push(mrb, result, mrb_obj_value(c->c));
      }
    }
    c = c->super;
  }

  return result;
}
