
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_connect_cb ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int TEST_PORT ;
 int UV_RUN_DEFAULT ;
 int close_cb_calls ;
 int connect_cb_calls ;
 int req ;
 int tcp ;
 int uv_default_loop () ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 int uv_run (int ,int ) ;
 scalar_t__ uv_tcp_bind (int *,struct sockaddr const*,int ) ;
 int uv_tcp_connect (int *,int *,struct sockaddr const*,int ) ;
 int uv_tcp_init (int ,int *) ;

__attribute__((used)) static void connection_fail(uv_connect_cb connect_cb) {
  struct sockaddr_in client_addr, server_addr;
  int r;

  ASSERT(0 == uv_ip4_addr("0.0.0.0", 0, &client_addr));


  ASSERT(0 == uv_ip4_addr("127.0.0.1", TEST_PORT, &server_addr));


  r = uv_tcp_init(uv_default_loop(), &tcp);
  ASSERT(!r);



  ASSERT(0 == uv_tcp_bind(&tcp, (const struct sockaddr*) &client_addr, 0));

  r = uv_tcp_connect(&req,
                     &tcp,
                     (const struct sockaddr*) &server_addr,
                     connect_cb);
  ASSERT(!r);

  uv_run(uv_default_loop(), UV_RUN_DEFAULT);

  ASSERT(connect_cb_calls == 1);
  ASSERT(close_cb_calls == 1);
}
