
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buff ;
 int cur_buff_len ;
 int result_buff_pos ;
 int wptr ;

void write_buff_set_pos (int pos) {
  if (pos > cur_buff_len) {
    return;
  }
  if (pos >= result_buff_pos) {
    wptr = (pos - result_buff_pos) + buff;
    return;
  }

  result_buff_pos = pos;
  wptr = buff;
}
