
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_handle_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int TEST_PORT ;
 int channel ;
 int closed_handle_write_cb ;
 int large_buf ;
 int tcp_server ;
 int uv_close (int *,int *) ;
 int uv_default_loop () ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 int uv_tcp_bind (int *,struct sockaddr const*,int ) ;
 int uv_tcp_init (int ,int *) ;
 int uv_write2 (int *,int *,int *,int,int *,int ) ;
 int write_req ;

__attribute__((used)) static void send_handle_and_close() {
  int r;
  struct sockaddr_in addr;

  r = uv_tcp_init(uv_default_loop(), &tcp_server);
  ASSERT(r == 0);

  ASSERT(0 == uv_ip4_addr("0.0.0.0", TEST_PORT, &addr));

  r = uv_tcp_bind(&tcp_server, (const struct sockaddr*) &addr, 0);
  ASSERT(r == 0);

  r = uv_write2(&write_req,
                (uv_stream_t*)&channel,
                &large_buf,
                1,
                (uv_stream_t*)&tcp_server,
                closed_handle_write_cb);
  ASSERT(r == 0);

  uv_close((uv_handle_t*)&tcp_server, ((void*)0));
}
