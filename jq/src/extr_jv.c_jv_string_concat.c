
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int jv_free (int ) ;
 int jv_string_value (int ) ;
 int jvp_string_append (int ,int ,int ) ;
 int jvp_string_length (int ) ;
 int jvp_string_ptr (int ) ;

jv jv_string_concat(jv a, jv b) {
  a = jvp_string_append(a, jv_string_value(b),
                        jvp_string_length(jvp_string_ptr(b)));
  jv_free(b);
  return a;
}
