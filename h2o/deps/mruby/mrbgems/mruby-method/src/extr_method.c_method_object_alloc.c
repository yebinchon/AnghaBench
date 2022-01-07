
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RObject {int dummy; } ;
struct RClass {int dummy; } ;
typedef int mrb_state ;


 int MRB_TT_OBJECT ;
 scalar_t__ mrb_obj_alloc (int *,int ,struct RClass*) ;

__attribute__((used)) static struct RObject *
method_object_alloc(mrb_state *mrb, struct RClass *mclass)
{
  return (struct RObject*)mrb_obj_alloc(mrb, MRB_TT_OBJECT, mclass);
}
