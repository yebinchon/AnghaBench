
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ buffer_meta_number ;
 scalar_t__ buffer_meta_pos ;
 scalar_t__* buffer_shifts ;
 int write_buffer_number ;

void buffer_meta_init () {
  buffer_meta_pos = 0;
  buffer_meta_number = 0;
  buffer_shifts[0] = 0;
  write_buffer_number++;
}
