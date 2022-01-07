
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 scalar_t__ IS_ARRAY ;
 int MAKE_STD_ZVAL (int *) ;
 int START_TIMER (int ) ;
 scalar_t__ Z_TYPE_PP (int **) ;
 int add_assoc_string (int *,char*,char*,int) ;
 int add_index_string (int *,int,char*,int) ;
 int array_init (int *) ;
 int assert (char*) ;
 int set_field ;
 scalar_t__ strlen (char const*) ;

void set_field_string (zval **arr, char *val, const char *id, int num) {
  ADD_CNT (set_field);
  START_TIMER (set_field);
  if (!*arr) {
    MAKE_STD_ZVAL (*arr);
    array_init (*arr);
  }
  assert (val);
  assert (*arr && Z_TYPE_PP (arr) == IS_ARRAY);

  if (id && strlen (id)) {
    add_assoc_string (*arr, (char *) id, val, 1);
  } else {
    add_index_string (*arr, num, val, 1);
  }
  END_TIMER (set_field);
}
