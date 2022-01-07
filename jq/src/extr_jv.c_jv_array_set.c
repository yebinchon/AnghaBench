
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_ARRAY ;
 int assert (int ) ;
 int jv_free (int ) ;
 int jv_invalid_with_msg (int ) ;
 int jv_string (char*) ;
 int jvp_array_length (int ) ;
 int * jvp_array_write (int *,int) ;

jv jv_array_set(jv j, int idx, jv val) {
  assert(JVP_HAS_KIND(j, JV_KIND_ARRAY));

  if (idx < 0)
    idx = jvp_array_length(j) + idx;
  if (idx < 0) {
    jv_free(j);
    jv_free(val);
    return jv_invalid_with_msg(jv_string("Out of bounds negative array index"));
  }

  jv* slot = jvp_array_write(&j, idx);
  jv_free(*slot);
  *slot = val;
  return j;
}
