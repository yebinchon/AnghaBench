
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FN ;
 int assert (int) ;
 int * color_int ;
 int * color_ll ;
 int* map_int_int_get (int *,long long) ;
 int* map_ll_int_get (int *,long long) ;
 scalar_t__* std_t ;

int get_color (int field_num, long long field_value) {
  assert (0 <= field_num && field_num < FN);

  if (std_t[field_num]) {
    int *t = map_ll_int_get (&color_ll[field_num], field_value);
    if (t != ((void*)0)) {
      return *t;
    }
  } else {
    int *t = map_int_int_get (&color_int[field_num], field_value);
    if (t != ((void*)0)) {
      return *t;
    }
  }

  return 0;
}
