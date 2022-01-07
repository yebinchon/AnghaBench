
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 scalar_t__ close_cb_calls ;
 int connect_cb_calls ;
 int on_close ;
 int tcp ;
 int timer_cb_calls ;
 int timer_close_cb ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  timer_cb_calls++;






  ASSERT(close_cb_calls == 0);
  ASSERT(connect_cb_calls == 1);


  uv_close((uv_handle_t*)&tcp, on_close);


  uv_close((uv_handle_t*)handle, timer_close_cb);
}
