
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_loop_t ;
typedef int uv_connect_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int TEST_PORT ;
 int on_connect ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 int uv_tcp_connect (int *,int *,struct sockaddr const*,int ) ;
 int uv_tcp_init (int *,int *) ;

__attribute__((used)) static void tcp_connector(uv_loop_t* loop, uv_tcp_t* client, uv_connect_t* req) {
  struct sockaddr_in server_addr;
  int r;

  ASSERT(0 == uv_ip4_addr("127.0.0.1", TEST_PORT, &server_addr));

  r = uv_tcp_init(loop, client);
  ASSERT(r == 0);

  r = uv_tcp_connect(req,
                     client,
                     (const struct sockaddr*) &server_addr,
                     on_connect);
  ASSERT(r == 0);
}
