
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int jvp_literal_number_new (char const*) ;

jv jv_number_with_literal(const char * literal) {
  return jvp_literal_number_new(literal);
}
