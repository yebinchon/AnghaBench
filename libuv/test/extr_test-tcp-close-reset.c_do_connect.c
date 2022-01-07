
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_loop_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int TEST_PORT ;
 int connect_cb ;
 int connect_req ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 int uv_tcp_connect (int *,int *,struct sockaddr const*,int ) ;
 int uv_tcp_init (int *,int *) ;

__attribute__((used)) static void do_connect(uv_loop_t* loop, uv_tcp_t* tcp_client) {
  struct sockaddr_in addr;
  int r;

  ASSERT(0 == uv_ip4_addr("127.0.0.1", TEST_PORT, &addr));

  r = uv_tcp_init(loop, tcp_client);
  ASSERT(r == 0);

  r = uv_tcp_connect(&connect_req,
                     tcp_client,
                     (const struct sockaddr*) &addr,
                     connect_cb);
  ASSERT(r == 0);
}
