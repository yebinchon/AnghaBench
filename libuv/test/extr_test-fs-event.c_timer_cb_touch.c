
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int timer_cb_touch_called ;
 int touch_file (char*) ;
 int uv_close (int *,int *) ;

__attribute__((used)) static void timer_cb_touch(uv_timer_t* timer) {
  uv_close((uv_handle_t*)timer, ((void*)0));
  touch_file("watch_file");
  timer_cb_touch_called++;
}
