
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int) ;
 int called_connect_cb ;
 int called_tcp_close_cb ;
 int called_timer_cb ;
 int got_eof ;
 int got_q ;
 int tcp ;

__attribute__((used)) static void tcp_close_cb(uv_handle_t* handle) {
  ASSERT(handle == (uv_handle_t*) &tcp);

  ASSERT(called_connect_cb == 1);
  ASSERT(got_q);
  ASSERT(got_eof);
  ASSERT(called_timer_cb == 1);

  called_tcp_close_cb++;
}
