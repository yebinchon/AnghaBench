
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WRITE_BUFF_SIZE ;
 int flush_write (int) ;
 scalar_t__* wptr ;
 scalar_t__* write_buff ;

void write_int (int x, int d) {
  if (wptr[x] + 4 > write_buff[x] + WRITE_BUFF_SIZE) {
    flush_write (x);
  }


  *(int *)(wptr[x]) = d;
  wptr[x] += 4;
}
