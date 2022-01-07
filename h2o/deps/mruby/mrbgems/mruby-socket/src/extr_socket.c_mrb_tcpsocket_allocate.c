
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RObject {int dummy; } ;
struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef enum mrb_vtype { ____Placeholder_mrb_vtype } mrb_vtype ;


 int MRB_INSTANCE_TT (struct RClass*) ;
 int MRB_TT_OBJECT ;
 struct RClass* mrb_class_ptr (int ) ;
 scalar_t__ mrb_obj_alloc (int *,int,struct RClass*) ;
 int mrb_obj_value (struct RObject*) ;

__attribute__((used)) static mrb_value
mrb_tcpsocket_allocate(mrb_state *mrb, mrb_value klass)
{
  struct RClass *c = mrb_class_ptr(klass);
  enum mrb_vtype ttype = MRB_INSTANCE_TT(c);


  if (ttype == 0) ttype = MRB_TT_OBJECT;
  return mrb_obj_value((struct RObject*)mrb_obj_alloc(mrb, ttype, c));
}
