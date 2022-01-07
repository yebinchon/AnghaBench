
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int jv_copy (int ) ;
 int jv_equal (int ,int ) ;
 int jvp_array_length (int ) ;
 scalar_t__ jvp_array_offset (int ) ;
 scalar_t__ jvp_array_ptr (int ) ;
 int * jvp_array_read (int ,int) ;

__attribute__((used)) static int jvp_array_equal(jv a, jv b) {
  if (jvp_array_length(a) != jvp_array_length(b))
    return 0;
  if (jvp_array_ptr(a) == jvp_array_ptr(b) &&
      jvp_array_offset(a) == jvp_array_offset(b))
    return 1;
  for (int i=0; i<jvp_array_length(a); i++) {
    if (!jv_equal(jv_copy(*jvp_array_read(a, i)),
                  jv_copy(*jvp_array_read(b, i))))
      return 0;
  }
  return 1;
}
