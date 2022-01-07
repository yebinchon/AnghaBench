
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* buff ;
 int flush_buff () ;
 char* result_buff ;
 scalar_t__ result_buff_len ;

char *finish_buff () {
  if (result_buff_len) {
    flush_buff ();
    return result_buff;
  } else {
    return buff;
  }
}
