
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_shutdown_t ;


 int ASSERT (int) ;
 int called_connect_cb ;
 int called_shutdown_cb ;
 scalar_t__ called_tcp_close_cb ;
 scalar_t__ called_timer_cb ;
 scalar_t__ called_timer_close_cb ;
 int got_eof ;
 int shutdown_req ;

__attribute__((used)) static void shutdown_cb(uv_shutdown_t *req, int status) {
  ASSERT(req == &shutdown_req);

  ASSERT(called_connect_cb == 1);
  ASSERT(!got_eof);
  ASSERT(called_tcp_close_cb == 0);
  ASSERT(called_timer_close_cb == 0);
  ASSERT(called_timer_cb == 0);

  called_shutdown_cb++;
}
