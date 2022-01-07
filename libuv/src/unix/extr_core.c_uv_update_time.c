
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;


 int uv__update_time (int *) ;

void uv_update_time(uv_loop_t* loop) {
  uv__update_time(loop);
}
