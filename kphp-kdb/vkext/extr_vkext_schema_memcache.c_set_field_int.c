
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 int MAKE_STD_ZVAL (int *) ;
 int START_TIMER (int ) ;
 int add_assoc_long (int *,char*,int) ;
 int add_index_long (int *,int,int) ;
 int array_init (int *) ;
 int set_field ;
 scalar_t__ strlen (char const*) ;

void set_field_int (zval **arr, int val, const char *id, int num) {
  ADD_CNT (set_field);
  START_TIMER (set_field);
  if (!*arr) {
    MAKE_STD_ZVAL (*arr);
    array_init (*arr);
  }
  if (id && strlen (id)) {
    add_assoc_long (*arr, (char *) id, val);
  } else {
    add_index_long (*arr, num, val);
  }
  END_TIMER (set_field);
}
