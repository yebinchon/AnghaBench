
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_connect_t ;


 int ASSERT (int) ;
 int UV_ECONNREFUSED ;
 scalar_t__ close_cb_calls ;
 int connect_cb_calls ;
 int timer ;
 int timer_cb ;
 int uv_timer_start (int *,int ,int,int ) ;

__attribute__((used)) static void on_connect_without_close(uv_connect_t *req, int status) {
  ASSERT(status == UV_ECONNREFUSED);
  connect_cb_calls++;

  uv_timer_start(&timer, timer_cb, 100, 0);

  ASSERT(close_cb_calls == 0);
}
