
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read_new_events () ;
 int use_aio ;

void targ_read_new_events (void) {
  use_aio = -use_aio;
  read_new_events ();
  use_aio = -use_aio;
}
