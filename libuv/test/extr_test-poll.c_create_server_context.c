
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_os_sock_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {TYPE_2__ poll_handle; scalar_t__ connections; int sock; } ;
typedef TYPE_1__ server_context_t ;


 int ASSERT (int) ;
 scalar_t__ malloc (int) ;
 int uv_default_loop () ;
 int uv_poll_init_socket (int ,TYPE_2__*,int ) ;

__attribute__((used)) static server_context_t* create_server_context(
    uv_os_sock_t sock) {
  int r;
  server_context_t* context;

  context = (server_context_t*) malloc(sizeof *context);
  ASSERT(context != ((void*)0));

  context->sock = sock;
  context->connections = 0;

  r = uv_poll_init_socket(uv_default_loop(), &context->poll_handle, sock);
  context->poll_handle.data = context;
  ASSERT(r == 0);

  return context;
}
