
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int close_cb ;
 int conn ;
 int timer ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  ASSERT(handle == &timer);
  uv_close((uv_handle_t*)&conn, close_cb);
  uv_close((uv_handle_t*)&timer, close_cb);
}
