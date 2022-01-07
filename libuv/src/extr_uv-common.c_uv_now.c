
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int time; } ;
typedef TYPE_1__ uv_loop_t ;
typedef int uint64_t ;



uint64_t uv_now(const uv_loop_t* loop) {
  return loop->time;
}
