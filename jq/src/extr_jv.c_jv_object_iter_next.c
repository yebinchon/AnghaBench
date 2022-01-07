
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_slot {int string; } ;
typedef int jv ;


 int ITER_FINISHED ;
 int JVP_HAS_KIND (int ,int ) ;
 scalar_t__ JV_KIND_NULL ;
 int JV_KIND_OBJECT ;
 scalar_t__ JV_KIND_STRING ;
 int assert (int) ;
 scalar_t__ jv_get_kind (int ) ;
 struct object_slot* jvp_object_get_slot (int ,int) ;
 int jvp_object_size (int ) ;

int jv_object_iter_next(jv object, int iter) {
  assert(JVP_HAS_KIND(object, JV_KIND_OBJECT));
  assert(iter != ITER_FINISHED);
  struct object_slot* slot;
  do {
    iter++;
    if (iter >= jvp_object_size(object))
      return ITER_FINISHED;
    slot = jvp_object_get_slot(object, iter);
  } while (jv_get_kind(slot->string) == JV_KIND_NULL);
  assert(jv_get_kind(jvp_object_get_slot(object,iter)->string)
         == JV_KIND_STRING);
  return iter;
}
