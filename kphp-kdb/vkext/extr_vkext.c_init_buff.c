
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buff ;
 scalar_t__ result_buff_len ;
 scalar_t__ result_buff_pos ;
 int wptr ;

void init_buff () {

  wptr = buff;
  result_buff_len = 0;
  result_buff_pos = 0;
}
