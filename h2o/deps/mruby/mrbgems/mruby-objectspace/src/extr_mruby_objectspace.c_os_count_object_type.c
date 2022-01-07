
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_count_struct {int * counts; int freed; int total; } ;
struct RBasic {size_t tt; } ;
typedef int mrb_state ;


 int MRB_EACH_OBJ_OK ;
 scalar_t__ mrb_object_dead_p (int *,struct RBasic*) ;

__attribute__((used)) static int
os_count_object_type(mrb_state *mrb, struct RBasic *obj, void *data)
{
  struct os_count_struct *obj_count;
  obj_count = (struct os_count_struct*)data;

  obj_count->total++;

  if (mrb_object_dead_p(mrb, obj)) {
    obj_count->freed++;
  }
  else {
    obj_count->counts[obj->tt]++;
  }
  return MRB_EACH_OBJ_OK;
}
