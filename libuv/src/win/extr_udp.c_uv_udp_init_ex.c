
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int handle_queue; int loop; TYPE_4__ recv_req; scalar_t__ send_queue_count; scalar_t__ send_queue_size; int func_wsarecvfrom; int func_wsarecv; scalar_t__ activecnt; scalar_t__ reqs_pending; scalar_t__ socket; } ;
typedef TYPE_1__ uv_udp_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;
typedef scalar_t__ SOCKET ;
typedef scalar_t__ DWORD ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 scalar_t__ INVALID_SOCKET ;
 int QUEUE_REMOVE (int *) ;
 int SOCK_DGRAM ;
 int UV_EINVAL ;
 int UV_REQ_INIT (TYPE_4__*,int ) ;
 int UV_UDP ;
 int UV_UDP_RECV ;
 scalar_t__ WSAGetLastError () ;
 int WSARecv ;
 int WSARecvFrom ;
 int closesocket (scalar_t__) ;
 scalar_t__ socket (int,int ,int ) ;
 int uv__handle_init (int *,int *,int ) ;
 int uv_translate_sys_error (scalar_t__) ;
 scalar_t__ uv_udp_set_socket (int ,TYPE_1__*,scalar_t__,int) ;

int uv_udp_init_ex(uv_loop_t* loop, uv_udp_t* handle, unsigned int flags) {
  int domain;


  domain = flags & 0xFF;
  if (domain != AF_INET && domain != AF_INET6 && domain != AF_UNSPEC)
    return UV_EINVAL;

  if (flags & ~0xFF)
    return UV_EINVAL;

  uv__handle_init(loop, (uv_handle_t*) handle, UV_UDP);
  handle->socket = INVALID_SOCKET;
  handle->reqs_pending = 0;
  handle->activecnt = 0;
  handle->func_wsarecv = WSARecv;
  handle->func_wsarecvfrom = WSARecvFrom;
  handle->send_queue_size = 0;
  handle->send_queue_count = 0;
  UV_REQ_INIT(&handle->recv_req, UV_UDP_RECV);
  handle->recv_req.data = handle;





  if (domain != AF_UNSPEC) {
    SOCKET sock;
    DWORD err;

    sock = socket(domain, SOCK_DGRAM, 0);
    if (sock == INVALID_SOCKET) {
      err = WSAGetLastError();
      QUEUE_REMOVE(&handle->handle_queue);
      return uv_translate_sys_error(err);
    }

    err = uv_udp_set_socket(handle->loop, handle, sock, domain);
    if (err) {
      closesocket(sock);
      QUEUE_REMOVE(&handle->handle_queue);
      return uv_translate_sys_error(err);
    }
  }

  return 0;
}
