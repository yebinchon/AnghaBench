
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_ARRAY ;
 int assert (int ) ;
 int jvp_array_slice (int ,int,int) ;

jv jv_array_slice(jv a, int start, int end) {
  assert(JVP_HAS_KIND(a, JV_KIND_ARRAY));

  return jvp_array_slice(a, start, end);
}
