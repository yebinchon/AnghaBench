
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BUFF_SIZE ;
 int assert (int) ;
 scalar_t__* f_buff ;
 scalar_t__* f_buff_r ;
 scalar_t__* f_buff_size ;
 int * fd ;
 int* fsize ;
 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;
 int read (int ,scalar_t__,int) ;

int load (int en) {
  if (fsize[en] <= 0) {
    assert (fsize[en] == 0);
    return -1;
  }
  if (f_buff_r[en] < f_buff_size[en]) {

    assert (f_buff_r[en] > f_buff_size[en] - f_buff_r[en]);
    memcpy (f_buff[en], f_buff[en] + f_buff_r[en], f_buff_size[en] - f_buff_r[en]);
  }
  f_buff_size[en] -= f_buff_r[en];
  f_buff_r[en] = 0;
  assert (0 <= f_buff_size[en]);

  int need = BUFF_SIZE - f_buff_size[en];
  if (fsize[en] < need) {
    need = fsize[en];
  }


  assert (read (fd[en], f_buff[en] + f_buff_size[en], need) == need);
  f_buff_size[en] += need;
  fsize[en] -= need;

  return 1;
}
