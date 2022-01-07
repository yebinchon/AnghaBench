
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int conv_uid (int) ;
 int* pass_min_uid ;
 int passes ;
 int * temp_file ;
 int tmp_write_logevent (int *,void const*,int) ;

int tmp_dispatch_logevent (const void *L, int size) {
  assert (size >= 8);
  int user_id = ((int *) L)[1];
  int uid = conv_uid (user_id);
  if (uid < 0) {
    return 0;
  }
  int a = -1, b = passes, c;
  while (b - a > 1) {
    c = ((a + b) >> 1);
    if (pass_min_uid[c] <= uid) {
      a = c;
    } else {
      b = c;
    }
  }
  assert (a >= 0 && uid < pass_min_uid[b]);
  tmp_write_logevent (&temp_file[a], L, size);
  return 1;
}
