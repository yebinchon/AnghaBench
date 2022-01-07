
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_STRING ;
 int assert (int ) ;
 int jv_free (int ) ;
 int jvp_string_length (int ) ;
 int jvp_string_ptr (int ) ;

int jv_string_length_bytes(jv j) {
  assert(JVP_HAS_KIND(j, JV_KIND_STRING));
  int r = jvp_string_length(jvp_string_ptr(j));
  jv_free(j);
  return r;
}
