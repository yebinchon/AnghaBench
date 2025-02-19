
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int engineF ;
 int engineN ;
 char** f_buff ;
 int* f_buff_r ;
 int* f_buff_size ;
 int* fd ;
 int fprintf (int ,char*,int,int,int,int) ;
 scalar_t__ left_files ;
 int load (int) ;
 int my_write (char*,int) ;
 int stderr ;

void run (void) {
  int i;
  while (left_files) {
    int min_time = 2147483637, now, size;
    for (i = engineF; i < engineN; i++) {
      if (fd[i] >= 0 && f_buff_size[i] - f_buff_r[i] < 2 * (int)sizeof (int) && load (i) == -1) {
        fd[i] = -1;
        left_files--;
        assert (f_buff_size[i] == f_buff_r[i]);
      }
    }

    for (i = engineF; i < engineN; i++) {
      if (fd[i] >= 0) {
        char *buff = f_buff[i] + f_buff_r[i];
        now = ((int *)buff)[0];
        size = ((int *)buff)[1];

        if (f_buff_size[i] - f_buff_r[i] < 2 * (int)sizeof (int) + size) {
          if (load (i) == -1 || f_buff_size[i] - f_buff_r[i] < 2 * (int)sizeof (int) + size) {
            fprintf (stderr, "Dump %d is broken. It contains event of size %d. f_buff_size = %d, f_buff_r = %d.\n", i, size, f_buff_size[i], f_buff_r[i]);
            assert (0);
          }
        }
        if (now < min_time) {
          min_time = now;
        }
      }
    }

    for (i = engineF; i < engineN; i++) {
      if (fd[i] >= 0) {
        char *buff = f_buff[i] + f_buff_r[i];
        now = ((int *)buff)[0];
        if (now == min_time) {
          size = ((int *)buff)[1];
          my_write (buff, 2 * sizeof (int) + size);
          f_buff_r[i] += 2 * sizeof (int) + size;
        }
      }
    }
  }
}
