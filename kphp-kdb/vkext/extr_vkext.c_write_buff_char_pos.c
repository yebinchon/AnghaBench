
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* buff ;
 int cur_buff_len ;
 char* result_buff ;
 int result_buff_pos ;

void write_buff_char_pos (char c, int pos) {
  if (pos > cur_buff_len) {
    return;
  }
  if (pos >= result_buff_pos) {
    *((pos - result_buff_pos) + buff) = c;
    return;
  }

  *(result_buff + pos) = c;
}
