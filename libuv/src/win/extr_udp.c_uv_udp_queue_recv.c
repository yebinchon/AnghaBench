
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_12__ ;


struct TYPE_19__ {void* InternalHigh; } ;
struct TYPE_25__ {char* base; scalar_t__ len; } ;
struct TYPE_20__ {TYPE_12__ overlapped; } ;
struct TYPE_21__ {TYPE_1__ io; } ;
struct TYPE_23__ {TYPE_2__ u; } ;
struct TYPE_22__ {int flags; int recv_from_len; int (* func_wsarecvfrom ) (int ,int *,int,void**,void**,struct sockaddr*,int*,TYPE_12__*,int *) ;int (* func_wsarecv ) (int ,int *,int,void**,void**,TYPE_12__*,int *) ;int reqs_pending; int socket; TYPE_12__ recv_from; TYPE_6__ recv_buffer; int (* recv_cb ) (TYPE_3__*,int ,TYPE_6__*,int *,int ) ;int (* alloc_cb ) (int *,int,TYPE_6__*) ;TYPE_4__ recv_req; } ;
typedef TYPE_3__ uv_udp_t ;
typedef TYPE_4__ uv_req_t ;
struct TYPE_24__ {scalar_t__ active_udp_streams; } ;
typedef TYPE_5__ uv_loop_t ;
typedef int uv_handle_t ;
typedef TYPE_6__ uv_buf_t ;
struct sockaddr {int dummy; } ;
typedef int WSABUF ;
typedef void* DWORD ;


 void* MSG_PEEK ;
 int SET_REQ_ERROR (TYPE_4__*,int ) ;
 int UV_ENOBUFS ;
 int UV_HANDLE_READING ;
 int UV_HANDLE_READ_PENDING ;
 int UV_HANDLE_ZERO_READ ;
 scalar_t__ UV_SUCCEEDED_WITHOUT_IOCP (int) ;
 scalar_t__ UV_SUCCEEDED_WITH_IOCP (int) ;
 int WSAGetLastError () ;
 int assert (int) ;
 int memset (TYPE_12__*,int ,int) ;
 int stub1 (int *,int,TYPE_6__*) ;
 int stub2 (TYPE_3__*,int ,TYPE_6__*,int *,int ) ;
 int stub3 (int ,int *,int,void**,void**,struct sockaddr*,int*,TYPE_12__*,int *) ;
 int stub4 (int ,int *,int,void**,void**,TYPE_12__*,int *) ;
 scalar_t__ uv_active_udp_streams_threshold ;
 TYPE_6__ uv_buf_init (int *,int ) ;
 int uv_insert_pending_req (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ uv_zero_ ;

__attribute__((used)) static void uv_udp_queue_recv(uv_loop_t* loop, uv_udp_t* handle) {
  uv_req_t* req;
  uv_buf_t buf;
  DWORD bytes, flags;
  int result;

  assert(handle->flags & UV_HANDLE_READING);
  assert(!(handle->flags & UV_HANDLE_READ_PENDING));

  req = &handle->recv_req;
  memset(&req->u.io.overlapped, 0, sizeof(req->u.io.overlapped));





  if (loop->active_udp_streams < uv_active_udp_streams_threshold) {
    handle->flags &= ~UV_HANDLE_ZERO_READ;

    handle->recv_buffer = uv_buf_init(((void*)0), 0);
    handle->alloc_cb((uv_handle_t*) handle, 65536, &handle->recv_buffer);
    if (handle->recv_buffer.base == ((void*)0) || handle->recv_buffer.len == 0) {
      handle->recv_cb(handle, UV_ENOBUFS, &handle->recv_buffer, ((void*)0), 0);
      return;
    }
    assert(handle->recv_buffer.base != ((void*)0));

    buf = handle->recv_buffer;
    memset(&handle->recv_from, 0, sizeof handle->recv_from);
    handle->recv_from_len = sizeof handle->recv_from;
    flags = 0;

    result = handle->func_wsarecvfrom(handle->socket,
                                      (WSABUF*) &buf,
                                      1,
                                      &bytes,
                                      &flags,
                                      (struct sockaddr*) &handle->recv_from,
                                      &handle->recv_from_len,
                                      &req->u.io.overlapped,
                                      ((void*)0));

    if (UV_SUCCEEDED_WITHOUT_IOCP(result == 0)) {

      handle->flags |= UV_HANDLE_READ_PENDING;
      req->u.io.overlapped.InternalHigh = bytes;
      handle->reqs_pending++;
      uv_insert_pending_req(loop, req);
    } else if (UV_SUCCEEDED_WITH_IOCP(result == 0)) {

      handle->flags |= UV_HANDLE_READ_PENDING;
      handle->reqs_pending++;
    } else {

      SET_REQ_ERROR(req, WSAGetLastError());
      uv_insert_pending_req(loop, req);
      handle->reqs_pending++;
    }

  } else {
    handle->flags |= UV_HANDLE_ZERO_READ;

    buf.base = (char*) uv_zero_;
    buf.len = 0;
    flags = MSG_PEEK;

    result = handle->func_wsarecv(handle->socket,
                                  (WSABUF*) &buf,
                                  1,
                                  &bytes,
                                  &flags,
                                  &req->u.io.overlapped,
                                  ((void*)0));

    if (UV_SUCCEEDED_WITHOUT_IOCP(result == 0)) {

      handle->flags |= UV_HANDLE_READ_PENDING;
      req->u.io.overlapped.InternalHigh = bytes;
      handle->reqs_pending++;
      uv_insert_pending_req(loop, req);
    } else if (UV_SUCCEEDED_WITH_IOCP(result == 0)) {

      handle->flags |= UV_HANDLE_READ_PENDING;
      handle->reqs_pending++;
    } else {

      SET_REQ_ERROR(req, WSAGetLastError());
      uv_insert_pending_req(loop, req);
      handle->reqs_pending++;
    }
  }
}
