
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;


 int ASSERT (int) ;
 int idle_cb_called ;
 scalar_t__ timer_cb_called ;
 int uv_timer_stop (int *) ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  ASSERT(idle_cb_called == 1);
  ASSERT(timer_cb_called == 0);
  uv_timer_stop(handle);
  timer_cb_called++;
}
