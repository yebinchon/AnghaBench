
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stop_flag; } ;
typedef TYPE_1__ uv_loop_t ;



void uv_stop(uv_loop_t* loop) {
  loop->stop_flag = 1;
}
