
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int) ;
 int called_timer_close_cb ;
 int timer ;

__attribute__((used)) static void timer_close_cb(uv_handle_t* handle) {
  ASSERT(handle == (uv_handle_t*) &timer);
  called_timer_close_cb++;
}
