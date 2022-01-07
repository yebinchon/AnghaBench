
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;





 scalar_t__ Z_DVAL_PP (int **) ;
 long long Z_LVAL_PP (int **) ;
 int Z_STRVAL_PP (int **) ;
 int Z_TYPE_PP (int **) ;
 int convert_to_long_ex (int **) ;
 long long my_atoll (int ) ;

long long parse_zend_long (zval **z) {
  switch (Z_TYPE_PP (z)) {
  case 129:
    return Z_LVAL_PP (z);
  case 130:
    return (long long)Z_DVAL_PP (z);
  case 128:
    return my_atoll (Z_STRVAL_PP (z));
  default:
    convert_to_long_ex (z);
    return Z_LVAL_PP (z);
  }
}
