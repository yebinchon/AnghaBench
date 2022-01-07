
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_udp_recv_cb ;
typedef int uv_buf_t ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int MAKE_VALGRIND_HAPPY () ;
 int TEST_PORT ;
 int UV_RUN_DEFAULT ;
 int alloc_cb ;
 int client ;
 int close_cb_called ;
 scalar_t__ recv_cb_called ;
 int req_ ;
 int send_cb ;
 scalar_t__ send_cb_called ;
 int server ;
 int timeout ;
 int timeout_cb ;
 int uv_buf_init (char*,int) ;
 int uv_default_loop () ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 scalar_t__ uv_ip6_addr (char*,int ,struct sockaddr_in6*) ;
 int uv_run (int ,int ) ;
 int uv_timer_init (int ,int *) ;
 int uv_timer_start (int *,int ,int,int ) ;
 int uv_udp_bind (int *,struct sockaddr const*,int) ;
 int uv_udp_init (int ,int *) ;
 int uv_udp_recv_start (int *,int ,int ) ;
 int uv_udp_send (int *,int *,int *,int,struct sockaddr const*,int ) ;

__attribute__((used)) static void do_test(uv_udp_recv_cb recv_cb, int bind_flags) {
  struct sockaddr_in6 addr6;
  struct sockaddr_in addr;
  uv_buf_t buf;
  int r;

  ASSERT(0 == uv_ip6_addr("::0", TEST_PORT, &addr6));

  r = uv_udp_init(uv_default_loop(), &server);
  ASSERT(r == 0);

  r = uv_udp_bind(&server, (const struct sockaddr*) &addr6, bind_flags);
  ASSERT(r == 0);

  r = uv_udp_recv_start(&server, alloc_cb, recv_cb);
  ASSERT(r == 0);

  r = uv_udp_init(uv_default_loop(), &client);
  ASSERT(r == 0);

  buf = uv_buf_init("PING", 4);
  ASSERT(0 == uv_ip4_addr("127.0.0.1", TEST_PORT, &addr));

  r = uv_udp_send(&req_,
                  &client,
                  &buf,
                  1,
                  (const struct sockaddr*) &addr,
                  send_cb);
  ASSERT(r == 0);

  r = uv_timer_init(uv_default_loop(), &timeout);
  ASSERT(r == 0);

  r = uv_timer_start(&timeout, timeout_cb, 500, 0);
  ASSERT(r == 0);

  ASSERT(close_cb_called == 0);
  ASSERT(send_cb_called == 0);
  ASSERT(recv_cb_called == 0);

  uv_run(uv_default_loop(), UV_RUN_DEFAULT);

  ASSERT(close_cb_called == 3);

  MAKE_VALGRIND_HAPPY();
}
