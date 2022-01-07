
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ data; } ;
typedef TYPE_1__ uv_poll_t ;
typedef scalar_t__ uv_os_sock_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
struct TYPE_8__ {scalar_t__ connections; int sock; } ;
typedef TYPE_2__ server_context_t ;
struct TYPE_9__ {int events; int poll_handle; } ;
typedef TYPE_3__ connection_context_t ;


 int ASSERT (int) ;
 scalar_t__ INVALID_SOCKET ;
 scalar_t__ NUM_CLIENTS ;
 int UV_DISCONNECT ;
 int UV_READABLE ;
 int UV_WRITABLE ;
 scalar_t__ accept (int ,struct sockaddr*,int*) ;
 int close_socket (int ) ;
 int connection_poll_cb ;
 TYPE_3__* create_connection_context (scalar_t__,int) ;
 int destroy_server_context (TYPE_2__*) ;
 int uv_poll_start (int *,int,int ) ;

__attribute__((used)) static void server_poll_cb(uv_poll_t* handle, int status, int events) {
  server_context_t* server_context = (server_context_t*)
                                          handle->data;
  connection_context_t* connection_context;
  struct sockaddr_in addr;
  socklen_t addr_len;
  uv_os_sock_t sock;
  int r;

  addr_len = sizeof addr;
  sock = accept(server_context->sock, (struct sockaddr*) &addr, &addr_len);



  ASSERT(sock >= 0);


  connection_context = create_connection_context(sock, 1);
  connection_context->events = UV_READABLE | UV_WRITABLE | UV_DISCONNECT;
  r = uv_poll_start(&connection_context->poll_handle,
                    UV_READABLE | UV_WRITABLE | UV_DISCONNECT,
                    connection_poll_cb);
  ASSERT(r == 0);

  if (++server_context->connections == NUM_CLIENTS) {
    close_socket(server_context->sock);
    destroy_server_context(server_context);
  }
}
