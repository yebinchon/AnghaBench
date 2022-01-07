
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;
typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_STRING ;
 int assert (int ) ;
 int jv_free (int ) ;
 unsigned long jvp_string_hash (int ) ;

unsigned long jv_string_hash(jv j) {
  assert(JVP_HAS_KIND(j, JV_KIND_STRING));
  uint32_t hash = jvp_string_hash(j);
  jv_free(j);
  return hash;
}
