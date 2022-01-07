
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int repeat; } ;
typedef TYPE_1__ uv_timer_t ;
typedef int uint64_t ;



uint64_t uv_timer_get_repeat(const uv_timer_t* handle) {
  return handle->repeat;
}
