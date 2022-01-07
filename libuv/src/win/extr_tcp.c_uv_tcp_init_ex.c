
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ processed_accepts; int * func_acceptex; int * pending_accepts; int * accept_reqs; } ;
struct TYPE_7__ {int * func_connectex; } ;
struct TYPE_9__ {TYPE_2__ serv; TYPE_1__ conn; } ;
struct TYPE_10__ {int handle_queue; int loop; scalar_t__ delayed_error; TYPE_3__ tcp; scalar_t__ reqs_pending; scalar_t__ socket; } ;
typedef TYPE_4__ uv_tcp_t ;
typedef int uv_stream_t ;
typedef int uv_loop_t ;
typedef scalar_t__ SOCKET ;
typedef scalar_t__ DWORD ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 scalar_t__ INVALID_SOCKET ;
 int QUEUE_REMOVE (int *) ;
 int SOCK_STREAM ;
 int UV_EINVAL ;
 int UV_TCP ;
 scalar_t__ WSAGetLastError () ;
 int closesocket (scalar_t__) ;
 scalar_t__ socket (int,int ,int ) ;
 int uv_stream_init (int *,int *,int ) ;
 scalar_t__ uv_tcp_set_socket (int ,TYPE_4__*,scalar_t__,int,int ) ;
 int uv_translate_sys_error (scalar_t__) ;

int uv_tcp_init_ex(uv_loop_t* loop, uv_tcp_t* handle, unsigned int flags) {
  int domain;


  domain = flags & 0xFF;
  if (domain != AF_INET && domain != AF_INET6 && domain != AF_UNSPEC)
    return UV_EINVAL;

  if (flags & ~0xFF)
    return UV_EINVAL;

  uv_stream_init(loop, (uv_stream_t*) handle, UV_TCP);
  handle->tcp.serv.accept_reqs = ((void*)0);
  handle->tcp.serv.pending_accepts = ((void*)0);
  handle->socket = INVALID_SOCKET;
  handle->reqs_pending = 0;
  handle->tcp.serv.func_acceptex = ((void*)0);
  handle->tcp.conn.func_connectex = ((void*)0);
  handle->tcp.serv.processed_accepts = 0;
  handle->delayed_error = 0;





  if (domain != AF_UNSPEC) {
    SOCKET sock;
    DWORD err;

    sock = socket(domain, SOCK_STREAM, 0);
    if (sock == INVALID_SOCKET) {
      err = WSAGetLastError();
      QUEUE_REMOVE(&handle->handle_queue);
      return uv_translate_sys_error(err);
    }

    err = uv_tcp_set_socket(handle->loop, handle, sock, domain, 0);
    if (err) {
      closesocket(sock);
      QUEUE_REMOVE(&handle->handle_queue);
      return uv_translate_sys_error(err);
    }

  }

  return 0;
}
