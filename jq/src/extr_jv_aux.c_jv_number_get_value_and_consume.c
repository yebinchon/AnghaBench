
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int jv_free (int ) ;
 double jv_number_value (int ) ;

__attribute__((used)) static double jv_number_get_value_and_consume(jv number) {
  double value = jv_number_value(number);
  jv_free(number);
  return value;
}
