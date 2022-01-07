
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_MONOTONIC ;
 long long GET_TIME_ID (int ) ;
 long long TIME_TABLE_RATIO_EXP ;
 int get_utime (int ) ;
 long long last_del_time ;

long long get_time_gap (void) {
  return (GET_TIME_ID (get_utime (CLOCK_MONOTONIC)) - last_del_time) << TIME_TABLE_RATIO_EXP;
}
