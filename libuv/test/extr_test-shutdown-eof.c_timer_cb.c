
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 scalar_t__ called_tcp_close_cb ;
 int called_timer_cb ;
 int tcp ;
 int tcp_close_cb ;
 int timer ;
 int timer_close_cb ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  ASSERT(handle == &timer);
  uv_close((uv_handle_t*) handle, timer_close_cb);





  ASSERT(called_tcp_close_cb == 0);
  uv_close((uv_handle_t*) &tcp, tcp_close_cb);

  called_timer_cb++;
}
