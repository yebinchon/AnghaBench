
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;


 int ASSERT (int) ;
 int check_cb_called ;
 int prepare_cb_called ;
 scalar_t__ timer_cb_called ;
 int timer_handle ;
 scalar_t__ uv_timer_stop (int *) ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  ASSERT(0 == uv_timer_stop(&timer_handle));
  ASSERT(1 == prepare_cb_called);
  ASSERT(1 == check_cb_called);
  ASSERT(0 == timer_cb_called);
  timer_cb_called++;
}
