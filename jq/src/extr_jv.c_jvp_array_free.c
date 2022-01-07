
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int length; int * elements; } ;
typedef TYPE_2__ jvp_array ;
struct TYPE_9__ {int ptr; } ;
struct TYPE_11__ {TYPE_1__ u; } ;
typedef TYPE_3__ jv ;


 int JVP_HAS_KIND (TYPE_3__,int ) ;
 int JV_KIND_ARRAY ;
 int assert (int ) ;
 int jv_free (int ) ;
 int jv_mem_free (TYPE_2__*) ;
 TYPE_2__* jvp_array_ptr (TYPE_3__) ;
 scalar_t__ jvp_refcnt_dec (int ) ;

__attribute__((used)) static void jvp_array_free(jv a) {
  assert(JVP_HAS_KIND(a, JV_KIND_ARRAY));
  if (jvp_refcnt_dec(a.u.ptr)) {
    jvp_array* array = jvp_array_ptr(a);
    for (int i=0; i<array->length; i++) {
      jv_free(array->elements[i]);
    }
    jv_mem_free(array);
  }
}
