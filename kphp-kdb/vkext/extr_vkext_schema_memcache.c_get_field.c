
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int **** zval ;


 int ADD_CNT (int ****** (*) (int *****,char const*,int)) ;
 int END_TIMER (int ****** (*) (int *****,char const*,int)) ;
 scalar_t__ FAILURE ;
 scalar_t__ IS_ARRAY ;
 int START_TIMER (int ****** (*) (int *****,char const*,int)) ;
 int Z_ARRVAL_P (int *****) ;
 scalar_t__ Z_TYPE_P (int *****) ;
 int assert (int ******) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ zend_hash_find (int ,char*,scalar_t__,void**) ;
 scalar_t__ zend_hash_index_find (int ,int,void*) ;

zval **get_field (zval *arr, const char *id, int num) {
  ADD_CNT (get_field);
  START_TIMER (get_field);
  assert (arr);

  if (Z_TYPE_P (arr) != IS_ARRAY) {

    END_TIMER (get_field);
    return 0;
  }



  zval **t = 0;
  if (id && strlen (id) && zend_hash_find (Z_ARRVAL_P (arr), (char *) id, strlen (id) + 1, (void **)&t) != FAILURE) {
    assert (t);
    END_TIMER (get_field);
    return t;
  }
  if (zend_hash_index_find (Z_ARRVAL_P (arr), num, (void *)&t) != FAILURE) {
    assert (t);
    END_TIMER (get_field);
    return t;
  }
  END_TIMER (get_field);
  return 0;
}
