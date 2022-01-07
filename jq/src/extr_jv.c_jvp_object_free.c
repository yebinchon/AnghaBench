
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct object_slot {int value; int string; } ;
struct TYPE_8__ {int ptr; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef TYPE_2__ jv ;


 int JVP_HAS_KIND (TYPE_2__,int ) ;
 scalar_t__ JV_KIND_NULL ;
 int JV_KIND_OBJECT ;
 int assert (int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_mem_free (int ) ;
 struct object_slot* jvp_object_get_slot (TYPE_2__,int) ;
 int jvp_object_ptr (TYPE_2__) ;
 int jvp_object_size (TYPE_2__) ;
 scalar_t__ jvp_refcnt_dec (int ) ;
 int jvp_string_free (int ) ;

__attribute__((used)) static void jvp_object_free(jv o) {
  assert(JVP_HAS_KIND(o, JV_KIND_OBJECT));
  if (jvp_refcnt_dec(o.u.ptr)) {
    for (int i=0; i<jvp_object_size(o); i++) {
      struct object_slot* slot = jvp_object_get_slot(o, i);
      if (jv_get_kind(slot->string) != JV_KIND_NULL) {
        jvp_string_free(slot->string);
        jv_free(slot->value);
      }
    }
    jv_mem_free(jvp_object_ptr(o));
  }
}
