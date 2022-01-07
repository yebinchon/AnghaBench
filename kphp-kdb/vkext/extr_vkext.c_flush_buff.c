
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ buff ;
 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;
 int realloc_buff () ;
 scalar_t__ result_buff ;
 scalar_t__ result_buff_len ;
 scalar_t__ result_buff_pos ;
 scalar_t__ wptr ;

void flush_buff () {
  while (result_buff_pos + (wptr - buff) > result_buff_len) {
    realloc_buff ();
  }
  memcpy (result_buff + result_buff_pos, buff, wptr - buff);
  result_buff_pos += (wptr - buff);
  wptr = buff;
}
