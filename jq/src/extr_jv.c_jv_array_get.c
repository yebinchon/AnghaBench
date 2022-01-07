
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_ARRAY ;
 int assert (int ) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 int jv_invalid () ;
 int * jvp_array_read (int ,int) ;

jv jv_array_get(jv j, int idx) {
  assert(JVP_HAS_KIND(j, JV_KIND_ARRAY));
  jv* slot = jvp_array_read(j, idx);
  jv val;
  if (slot) {
    val = jv_copy(*slot);
  } else {
    val = jv_invalid();
  }
  jv_free(j);
  return val;
}
