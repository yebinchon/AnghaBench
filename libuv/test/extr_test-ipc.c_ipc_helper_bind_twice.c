
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
 int MAKE_VALGRIND_HAPPY () ;
 int TEST_PORT ;
 int UV_RUN_DEFAULT ;
 int channel ;
 int tcp_server ;
 int tcp_server2 ;
 int uv_buf_init (char*,int) ;
 int uv_default_loop () ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 scalar_t__ uv_is_closing (int *) ;
 int uv_is_readable (int *) ;
 int uv_is_writable (int *) ;
 int uv_pipe_init (int ,int *,int) ;
 int uv_pipe_open (int *,int ) ;
 int uv_run (int ,int ) ;
 int uv_tcp_bind (int *,struct sockaddr const*,int ) ;
 int uv_tcp_init (int ,int *) ;
 int uv_write2 (int *,int *,int *,int,int *,int *) ;
 int write_req ;
 int write_req2 ;

int ipc_helper_bind_twice(void) {




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

  buf = uv_buf_init("hello\n", 6);

  r = uv_tcp_init(uv_default_loop(), &tcp_server);
  ASSERT(r == 0);
  r = uv_tcp_init(uv_default_loop(), &tcp_server2);
  ASSERT(r == 0);

  r = uv_tcp_bind(&tcp_server, (const struct sockaddr*) &addr, 0);
  ASSERT(r == 0);
  r = uv_tcp_bind(&tcp_server2, (const struct sockaddr*) &addr, 0);
  ASSERT(r == 0);

  r = uv_write2(&write_req, (uv_stream_t*)&channel, &buf, 1,
                (uv_stream_t*)&tcp_server, ((void*)0));
  ASSERT(r == 0);
  r = uv_write2(&write_req2, (uv_stream_t*)&channel, &buf, 1,
                (uv_stream_t*)&tcp_server2, ((void*)0));
  ASSERT(r == 0);

  r = uv_run(uv_default_loop(), UV_RUN_DEFAULT);
  ASSERT(r == 0);

  MAKE_VALGRIND_HAPPY();
  return 0;
}
