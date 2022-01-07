
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_MONOTONIC ;
 double dl_get_utime (int ) ;

double dl_time() {
  return dl_get_utime (CLOCK_MONOTONIC);
}
