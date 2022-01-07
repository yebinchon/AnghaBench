
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int tcp; } ;
struct TYPE_4__ {int tcp; } ;
struct TYPE_6__ {TYPE_2__ send2; TYPE_1__ send; int expected_type; } ;


 int ASSERT (int) ;
 int MAKE_VALGRIND_HAPPY () ;
 int TEST_PORT ;
 int UV_TCP ;
 TYPE_3__ ctx ;
 int run_test (int) ;
 int uv_default_loop () ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 int uv_tcp_bind (int *,struct sockaddr const*,int ) ;
 int uv_tcp_init (int ,int *) ;

__attribute__((used)) static int run_ipc_send_recv_tcp(int inprocess) {
  struct sockaddr_in addr;
  int r;

  ASSERT(0 == uv_ip4_addr("127.0.0.1", TEST_PORT, &addr));

  ctx.expected_type = UV_TCP;

  r = uv_tcp_init(uv_default_loop(), &ctx.send.tcp);
  ASSERT(r == 0);

  r = uv_tcp_init(uv_default_loop(), &ctx.send2.tcp);
  ASSERT(r == 0);

  r = uv_tcp_bind(&ctx.send.tcp, (const struct sockaddr*) &addr, 0);
  ASSERT(r == 0);

  r = uv_tcp_bind(&ctx.send2.tcp, (const struct sockaddr*) &addr, 0);
  ASSERT(r == 0);

  r = run_test(inprocess);
  ASSERT(r == 0);

  MAKE_VALGRIND_HAPPY();
  return 0;
}
