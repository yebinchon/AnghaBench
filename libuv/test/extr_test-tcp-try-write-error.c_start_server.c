
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int TEST_PORT ;
 int connection_cb ;
 int server ;
 int uv_default_loop () ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 scalar_t__ uv_listen (int *,int,int ) ;
 scalar_t__ uv_tcp_bind (int *,struct sockaddr*,int ) ;
 scalar_t__ uv_tcp_init (int ,int *) ;

__attribute__((used)) static void start_server(void) {
  struct sockaddr_in addr;

  ASSERT(0 == uv_ip4_addr("0.0.0.0", TEST_PORT, &addr));

  ASSERT(0 == uv_tcp_init(uv_default_loop(), &server));
  ASSERT(0 == uv_tcp_bind(&server, (struct sockaddr*) &addr, 0));
  ASSERT(0 == uv_listen((uv_stream_t*) &server, 128, connection_cb));
}
