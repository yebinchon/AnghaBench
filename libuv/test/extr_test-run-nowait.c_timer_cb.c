
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;


 int ASSERT (int) ;
 int timer_called ;
 int timer_handle ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  ASSERT(handle == &timer_handle);
  timer_called = 1;
}
