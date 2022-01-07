
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * fd ;
 int w_buff ;
 scalar_t__ w_buff_n ;
 int write (int ,int ,scalar_t__) ;

void flush_w_buff() {
  write (fd[1], w_buff, w_buff_n);
  w_buff_n = 0;
}
