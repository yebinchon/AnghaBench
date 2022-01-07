
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_clocktype_t ;
typedef int uint64_t ;
struct TYPE_4__ {int tb_low; scalar_t__ tb_high; } ;
typedef TYPE_1__ timebasestruct_t ;


 int TIMEBASE_SZ ;
 int read_wall_time (TYPE_1__*,int ) ;
 int time_base_to_time (TYPE_1__*,int ) ;

uint64_t uv__hrtime(uv_clocktype_t type) {
  uint64_t G = 1000000000;
  timebasestruct_t t;
  read_wall_time(&t, TIMEBASE_SZ);
  time_base_to_time(&t, TIMEBASE_SZ);
  return (uint64_t) t.tb_high * G + t.tb_low;
}
