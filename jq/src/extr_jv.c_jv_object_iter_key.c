
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jv ;
struct TYPE_2__ {int string; } ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_STRING ;
 int assert (int ) ;
 int jv_copy (int ) ;
 TYPE_1__* jvp_object_get_slot (int ,int) ;

jv jv_object_iter_key(jv object, int iter) {
  jv s = jvp_object_get_slot(object, iter)->string;
  assert(JVP_HAS_KIND(s, JV_KIND_STRING));
  return jv_copy(s);
}
