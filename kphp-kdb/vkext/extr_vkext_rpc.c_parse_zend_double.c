
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;





 double Z_DVAL_PP (int **) ;
 double Z_LVAL_PP (int **) ;
 int Z_STRVAL_PP (int **) ;
 int Z_TYPE_PP (int **) ;
 double atof (int ) ;
 int convert_to_double_ex (int **) ;

double parse_zend_double (zval **z) {
  switch (Z_TYPE_PP (z)) {
  case 129:
    return Z_LVAL_PP (z);
  case 130:
    return Z_DVAL_PP (z);
  case 128:
    return atof (Z_STRVAL_PP (z));
  default:
    convert_to_double_ex (z);
    return Z_DVAL_PP (z);
  }
}
