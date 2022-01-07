
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_ARRAY ;
 int assert (int ) ;
 int jv_free (int ) ;
 int jvp_array_length (int ) ;

int jv_array_length(jv j) {
  assert(JVP_HAS_KIND(j, JV_KIND_ARRAY));
  int len = jvp_array_length(j);
  jv_free(j);
  return len;
}
