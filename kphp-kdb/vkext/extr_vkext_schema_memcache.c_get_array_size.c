
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_ARRVAL_P (int *) ;
 int zend_hash_num_elements (int ) ;

int get_array_size (zval **arr) {
  return zend_hash_num_elements (Z_ARRVAL_P (*arr));
}
