
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* debug_buff ;
 scalar_t__ debug_error ;
 scalar_t__* ds ;

void debug_init (void) {
  ds = debug_buff;
  debug_error = 0;
  debug_buff[0] = 0;
}
