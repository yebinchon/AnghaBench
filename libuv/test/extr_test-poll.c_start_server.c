
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_os_sock_t ;
struct sockaddr_in {int dummy; } ;
struct TYPE_3__ {int poll_handle; } ;
typedef TYPE_1__ server_context_t ;


 int ASSERT (int) ;
 int TEST_PORT ;
 int UV_READABLE ;
 int create_bound_socket (struct sockaddr_in) ;
 TYPE_1__* create_server_context (int ) ;
 int listen (int ,int) ;
 int server_poll_cb ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 int uv_poll_start (int *,int ,int ) ;

__attribute__((used)) static void start_server(void) {
  server_context_t* context;
  struct sockaddr_in addr;
  uv_os_sock_t sock;
  int r;

  ASSERT(0 == uv_ip4_addr("127.0.0.1", TEST_PORT, &addr));
  sock = create_bound_socket(addr);
  context = create_server_context(sock);

  r = listen(sock, 100);
  ASSERT(r == 0);

  r = uv_poll_start(&context->poll_handle, UV_READABLE, server_poll_cb);
  ASSERT(r == 0);
}
