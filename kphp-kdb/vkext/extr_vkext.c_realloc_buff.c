
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFF_LEN ;
 int emalloc (int) ;
 int erealloc (int ,int) ;
 int result_buff ;
 int result_buff_len ;

void realloc_buff () {
  if (!result_buff_len) {
    result_buff = emalloc (BUFF_LEN);
    result_buff_len = BUFF_LEN;
  } else {
    result_buff = erealloc (result_buff, 2 * result_buff_len);
    result_buff_len *= 2;
  }
}
