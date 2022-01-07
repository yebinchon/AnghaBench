
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_stream_t ;
typedef int uv_loop_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int TEST_PORT ;
 int on_connection ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 int uv_listen (int *,int,int ) ;
 int uv_tcp_bind (int *,struct sockaddr const*,int ) ;
 int uv_tcp_init (int *,int *) ;

__attribute__((used)) static void tcp_listener(uv_loop_t* loop, uv_tcp_t* server) {
  struct sockaddr_in addr;
  int r;

  ASSERT(0 == uv_ip4_addr("0.0.0.0", TEST_PORT, &addr));

  r = uv_tcp_init(loop, server);
  ASSERT(r == 0);

  r = uv_tcp_bind(server, (const struct sockaddr*) &addr, 0);
  ASSERT(r == 0);

  r = uv_listen((uv_stream_t*) server, 128, on_connection);
  ASSERT(r == 0);
}
