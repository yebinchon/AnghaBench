
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_each_object_data {int count; int block; scalar_t__ target_module; } ;
struct RBasic {int tt; int c; } ;
typedef int mrb_state ;


 int MRB_EACH_OBJ_OK ;


 int mrb_obj_is_kind_of (int *,int ,scalar_t__) ;
 int mrb_obj_value (struct RBasic*) ;
 scalar_t__ mrb_object_dead_p (int *,struct RBasic*) ;
 int mrb_yield (int *,int ,int ) ;

__attribute__((used)) static int
os_each_object_cb(mrb_state *mrb, struct RBasic *obj, void *ud)
{
  struct os_each_object_data *d = (struct os_each_object_data*)ud;


  if (mrb_object_dead_p(mrb, obj)) {
    return MRB_EACH_OBJ_OK;
  }


  switch (obj->tt) {
  case 129:
  case 128:
    return MRB_EACH_OBJ_OK;
  default:
    break;
  }


  if (!obj->c) return MRB_EACH_OBJ_OK;


  if (d->target_module && !mrb_obj_is_kind_of(mrb, mrb_obj_value(obj), d->target_module)) {
    return MRB_EACH_OBJ_OK;
  }

  mrb_yield(mrb, d->block, mrb_obj_value(obj));
  ++d->count;
  return MRB_EACH_OBJ_OK;
}
