
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int efree (int ) ;
 int result_buff ;
 scalar_t__ result_buff_len ;

void free_buff () {
  if (result_buff_len) {
    efree (result_buff);
  }
}
