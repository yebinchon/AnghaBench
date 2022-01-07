
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int send_queue_count; int send_queue_size; int reqs_pending; int socket; int * loop; } ;
typedef TYPE_3__ uv_udp_t ;
struct TYPE_10__ {scalar_t__ queued_bytes; int overlapped; } ;
struct TYPE_11__ {TYPE_1__ io; } ;
struct TYPE_13__ {TYPE_2__ u; int cb; TYPE_3__* handle; } ;
typedef TYPE_4__ uv_udp_send_t ;
typedef int uv_udp_send_cb ;
typedef int uv_req_t ;
typedef int uv_loop_t ;
typedef int uv_buf_t ;
struct sockaddr {int dummy; } ;
typedef int WSABUF ;
typedef scalar_t__ DWORD ;


 int REGISTER_HANDLE_REQ (int *,TYPE_3__*,TYPE_4__*) ;
 int UV_REQ_INIT (TYPE_4__*,int ) ;
 scalar_t__ UV_SUCCEEDED_WITHOUT_IOCP (int) ;
 scalar_t__ UV_SUCCEEDED_WITH_IOCP (int) ;
 int UV_UDP_SEND ;
 int WSAGetLastError () ;
 scalar_t__ WSASendTo (int ,int *,unsigned int,scalar_t__*,int ,struct sockaddr const*,unsigned int,int *,int *) ;
 int memset (int *,int ,int) ;
 scalar_t__ uv__count_bufs (int const*,unsigned int) ;
 int uv_insert_pending_req (int *,int *) ;

__attribute__((used)) static int uv__send(uv_udp_send_t* req,
                    uv_udp_t* handle,
                    const uv_buf_t bufs[],
                    unsigned int nbufs,
                    const struct sockaddr* addr,
                    unsigned int addrlen,
                    uv_udp_send_cb cb) {
  uv_loop_t* loop = handle->loop;
  DWORD result, bytes;

  UV_REQ_INIT(req, UV_UDP_SEND);
  req->handle = handle;
  req->cb = cb;
  memset(&req->u.io.overlapped, 0, sizeof(req->u.io.overlapped));

  result = WSASendTo(handle->socket,
                     (WSABUF*)bufs,
                     nbufs,
                     &bytes,
                     0,
                     addr,
                     addrlen,
                     &req->u.io.overlapped,
                     ((void*)0));

  if (UV_SUCCEEDED_WITHOUT_IOCP(result == 0)) {

    req->u.io.queued_bytes = 0;
    handle->reqs_pending++;
    handle->send_queue_size += req->u.io.queued_bytes;
    handle->send_queue_count++;
    REGISTER_HANDLE_REQ(loop, handle, req);
    uv_insert_pending_req(loop, (uv_req_t*)req);
  } else if (UV_SUCCEEDED_WITH_IOCP(result == 0)) {

    req->u.io.queued_bytes = uv__count_bufs(bufs, nbufs);
    handle->reqs_pending++;
    handle->send_queue_size += req->u.io.queued_bytes;
    handle->send_queue_count++;
    REGISTER_HANDLE_REQ(loop, handle, req);
  } else {

    return WSAGetLastError();
  }

  return 0;
}
