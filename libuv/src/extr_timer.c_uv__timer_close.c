
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;


 int uv_timer_stop (int *) ;

void uv__timer_close(uv_timer_t* handle) {
  uv_timer_stop(handle);
}
