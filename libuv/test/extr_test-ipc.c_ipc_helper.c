
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int BACKLOG ;
 int MAKE_VALGRIND_HAPPY () ;
 int TEST_PORT ;
 int UV_RUN_DEFAULT ;
 int channel ;
 int close_cb_called ;
 int connection_accepted ;
 int ipc_on_connection ;
 int notify_parent_process () ;
 int tcp_server ;
 int uv_buf_init (char*,int) ;
 int uv_default_loop () ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 scalar_t__ uv_is_closing (int *) ;
 int uv_is_readable (int *) ;
 int uv_is_writable (int *) ;
 int uv_listen (int *,int ,int ) ;
 int uv_pipe_init (int ,int *,int) ;
 int uv_pipe_open (int *,int ) ;
 int uv_run (int ,int ) ;
 int uv_tcp_bind (int *,struct sockaddr const*,int ) ;
 int uv_tcp_init (int ,int *) ;
 int uv_write2 (int *,int *,int *,int,int *,int *) ;
 int write_req ;

int ipc_helper(int listen_after_write) {




  struct sockaddr_in addr;
  int r;
  uv_buf_t buf;

  ASSERT(0 == uv_ip4_addr("0.0.0.0", TEST_PORT, &addr));

  r = uv_pipe_init(uv_default_loop(), &channel, 1);
  ASSERT(r == 0);

  uv_pipe_open(&channel, 0);

  ASSERT(1 == uv_is_readable((uv_stream_t*) &channel));
  ASSERT(1 == uv_is_writable((uv_stream_t*) &channel));
  ASSERT(0 == uv_is_closing((uv_handle_t*) &channel));

  r = uv_tcp_init(uv_default_loop(), &tcp_server);
  ASSERT(r == 0);

  r = uv_tcp_bind(&tcp_server, (const struct sockaddr*) &addr, 0);
  ASSERT(r == 0);

  if (!listen_after_write) {
    r = uv_listen((uv_stream_t*)&tcp_server, BACKLOG, ipc_on_connection);
    ASSERT(r == 0);
  }

  buf = uv_buf_init("hello\n", 6);
  r = uv_write2(&write_req, (uv_stream_t*)&channel, &buf, 1,
      (uv_stream_t*)&tcp_server, ((void*)0));
  ASSERT(r == 0);

  if (listen_after_write) {
    r = uv_listen((uv_stream_t*)&tcp_server, BACKLOG, ipc_on_connection);
    ASSERT(r == 0);
  }

  notify_parent_process();
  r = uv_run(uv_default_loop(), UV_RUN_DEFAULT);
  ASSERT(r == 0);

  ASSERT(connection_accepted == 1);
  ASSERT(close_cb_called == 3);

  MAKE_VALGRIND_HAPPY();
  return 0;
}
