
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int ADD_CNT (void (*) (int **,int *,char const*,int)) ;
 int END_TIMER (void (*) (int **,int *,char const*,int)) ;
 scalar_t__ IS_ARRAY ;
 int MAKE_STD_ZVAL (int *) ;
 int START_TIMER (void (*) (int **,int *,char const*,int)) ;
 int Z_TYPE_P (int *) ;
 scalar_t__ Z_TYPE_PP (int **) ;
 int add_assoc_zval (int *,char*,int *) ;
 int add_index_zval (int *,int,int *) ;
 int array_init (int *) ;
 int assert (int *) ;
 int fprintf (int ,char*,int,int,int *) ;
 int stderr ;
 scalar_t__ strlen (char const*) ;

void set_field (zval **arr, zval *val, const char *id, int num) {
  ADD_CNT (set_field);
  START_TIMER (set_field);
  if (!*arr) {
    MAKE_STD_ZVAL (*arr);
    array_init (*arr);
  }
  assert (val);
  assert (*arr && Z_TYPE_PP (arr) == IS_ARRAY);



  if (id && strlen (id)) {
    add_assoc_zval (*arr, (char *) id, val);
  } else {
    add_index_zval (*arr, num, val);
  }
  END_TIMER (set_field);
}
