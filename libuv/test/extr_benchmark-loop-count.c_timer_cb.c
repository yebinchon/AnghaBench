
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;


 int idle_handle ;
 int timer_handle ;
 int uv_idle_stop (int *) ;
 int uv_timer_stop (int *) ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  uv_idle_stop(&idle_handle);
  uv_timer_stop(&timer_handle);
}
