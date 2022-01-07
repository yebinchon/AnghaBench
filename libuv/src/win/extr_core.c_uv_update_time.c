
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ time; } ;
typedef TYPE_1__ uv_loop_t ;
typedef scalar_t__ uint64_t ;


 int assert (int) ;
 scalar_t__ uv__hrtime (int) ;

void uv_update_time(uv_loop_t* loop) {
  uint64_t new_time = uv__hrtime(1000);
  assert(new_time >= loop->time);
  loop->time = new_time;
}
