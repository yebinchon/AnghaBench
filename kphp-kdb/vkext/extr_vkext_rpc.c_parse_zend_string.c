
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_STRLEN_PP (int **) ;
 char* Z_STRVAL_PP (int **) ;
 int convert_to_string_ex (int **) ;

char *parse_zend_string (zval **z, int *l) {
  convert_to_string_ex (z);
  if (l) { *l = Z_STRLEN_PP (z); }
  return Z_STRVAL_PP (z);
}
