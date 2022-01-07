
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;


 int ASSERT (int) ;
 int num_ticks ;
 int timer_called ;
 int timer_handle ;
 int uv_default_loop () ;
 int uv_stop (int ) ;
 int uv_timer_stop (int *) ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  ASSERT(handle == &timer_handle);
  timer_called++;
  if (timer_called == 1)
    uv_stop(uv_default_loop());
  else if (timer_called == num_ticks)
    uv_timer_stop(handle);
}
