
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MY_BUFF_SIZE ;
 int assert (int) ;
 int engineN ;
 int exit (int ) ;
 scalar_t__* f_buff ;
 int* f_buff_i ;
 int* f_buff_r ;
 int* f_buff_size ;
 scalar_t__** f_header ;
 int * fd ;
 int fprintf (int ,char*,scalar_t__,int,int,int) ;
 int memcpy (int*,scalar_t__,scalar_t__) ;
 int read (int ,scalar_t__,int) ;
 int stderr ;
 int un ;

int load (int en, int id, int *a) {
  int r = f_buff_r[en];

  if (id >= r) {
    assert (id == r);
    int sz = 0;
    while (r <= un && sz + f_header[en][r] <= MY_BUFF_SIZE) {
      sz += f_header[en][r++];
    }
    if (f_header[en][r] > MY_BUFF_SIZE) {
      fprintf (stderr, "BIG USER DETECTED %d, r = %d, en = %d, id= %d\n", f_header[en][r], r, en, r * engineN + en);
      exit (0);
    }
    read (fd[en], f_buff[en], sz * sizeof (unsigned char));
    f_buff_i[en] = 0;
    f_buff_r[en] = r;
    f_buff_size[en] = sz;
  }


  assert (f_buff_i[en] + f_header[en][id] <= MY_BUFF_SIZE);
  memcpy (a, f_buff[en] + f_buff_i[en], f_header[en][id]);

  int res = f_header[en][id] / sizeof (int);

  f_buff_i[en] += f_header[en][id];
  assert (f_buff_i[en] <= f_buff_size[en]);
  return res;
}
