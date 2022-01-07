
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dl_string ;


 int fid_name_id ;
 int* map_string_int_add (int *,int ) ;

int conv_fid_name (dl_string x, int x_num) {
  int *y = map_string_int_add (&fid_name_id, x);
  if (*y == 0) {
    *y = x_num;
  }
  return *y;
}
