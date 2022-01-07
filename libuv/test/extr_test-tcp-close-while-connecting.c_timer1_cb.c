
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int close_cb ;
 int tcp_handle ;
 int timer1_cb_called ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void timer1_cb(uv_timer_t* handle) {
  uv_close((uv_handle_t*)handle, close_cb);
  uv_close((uv_handle_t*)&tcp_handle, close_cb);
  timer1_cb_called++;
}
