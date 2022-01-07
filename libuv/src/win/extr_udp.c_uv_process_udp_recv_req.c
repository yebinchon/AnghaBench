
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;


struct TYPE_37__ {scalar_t__ len; int * base; } ;
struct TYPE_35__ {scalar_t__ type; int flags; int (* recv_cb ) (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int ) ;int socket; int (* alloc_cb ) (int *,int,TYPE_6__*) ;int recv_from; TYPE_6__ recv_buffer; } ;
typedef TYPE_4__ uv_udp_t ;
struct TYPE_32__ {scalar_t__ InternalHigh; } ;
struct TYPE_33__ {TYPE_1__ overlapped; } ;
struct TYPE_34__ {TYPE_2__ io; } ;
struct TYPE_36__ {TYPE_3__ u; } ;
typedef TYPE_5__ uv_req_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;
typedef TYPE_6__ uv_buf_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int WSABUF ;
typedef scalar_t__ DWORD ;


 int DECREASE_PENDING_REQ_COUNT (TYPE_4__*) ;
 scalar_t__ GET_REQ_SOCK_ERROR (TYPE_5__*) ;
 int REQ_SUCCESS (TYPE_5__*) ;
 scalar_t__ SOCKET_ERROR ;
 scalar_t__ UV_ENOBUFS ;
 int UV_HANDLE_READING ;
 int UV_HANDLE_READ_PENDING ;
 int UV_HANDLE_ZERO_READ ;
 scalar_t__ UV_UDP ;
 int UV_UDP_PARTIAL ;
 scalar_t__ WSAECONNRESET ;
 scalar_t__ WSAEMSGSIZE ;
 scalar_t__ WSAENETRESET ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ WSARecvFrom (int ,int *,int,scalar_t__*,scalar_t__*,struct sockaddr*,int*,int *,int *) ;
 int assert (int) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int stub1 (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int ) ;
 int stub2 (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int ) ;
 int stub3 (int *,int,TYPE_6__*) ;
 int stub4 (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int ) ;
 int stub5 (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int ) ;
 int stub6 (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int ) ;
 int stub7 (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int ) ;
 int stub8 (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int ) ;
 int stub9 (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int ) ;
 TYPE_6__ uv_buf_init (int *,int ) ;
 scalar_t__ uv_translate_sys_error (scalar_t__) ;
 int uv_udp_queue_recv (int *,TYPE_4__*) ;
 int uv_udp_recv_stop (TYPE_4__*) ;

void uv_process_udp_recv_req(uv_loop_t* loop, uv_udp_t* handle,
    uv_req_t* req) {
  uv_buf_t buf;
  int partial;

  assert(handle->type == UV_UDP);

  handle->flags &= ~UV_HANDLE_READ_PENDING;

  if (!REQ_SUCCESS(req)) {
    DWORD err = GET_REQ_SOCK_ERROR(req);
    if (err == WSAEMSGSIZE) {


    } else if (err == WSAECONNRESET || err == WSAENETRESET) {




      if (!(handle->flags & UV_HANDLE_ZERO_READ)) {
        goto done;
      }
    } else {


      if (handle->flags & UV_HANDLE_READING) {
        uv_udp_recv_stop(handle);
        buf = (handle->flags & UV_HANDLE_ZERO_READ) ?
              uv_buf_init(((void*)0), 0) : handle->recv_buffer;
        handle->recv_cb(handle, uv_translate_sys_error(err), &buf, ((void*)0), 0);
      }
      goto done;
    }
  }

  if (!(handle->flags & UV_HANDLE_ZERO_READ)) {

    partial = !REQ_SUCCESS(req);
    handle->recv_cb(handle,
                    req->u.io.overlapped.InternalHigh,
                    &handle->recv_buffer,
                    (const struct sockaddr*) &handle->recv_from,
                    partial ? UV_UDP_PARTIAL : 0);
  } else if (handle->flags & UV_HANDLE_READING) {
    DWORD bytes, err, flags;
    struct sockaddr_storage from;
    int from_len;



    buf = uv_buf_init(((void*)0), 0);
    handle->alloc_cb((uv_handle_t*) handle, 65536, &buf);
    if (buf.base == ((void*)0) || buf.len == 0) {
      handle->recv_cb(handle, UV_ENOBUFS, &buf, ((void*)0), 0);
      goto done;
    }
    assert(buf.base != ((void*)0));

    memset(&from, 0, sizeof from);
    from_len = sizeof from;

    flags = 0;

    if (WSARecvFrom(handle->socket,
                    (WSABUF*)&buf,
                    1,
                    &bytes,
                    &flags,
                    (struct sockaddr*) &from,
                    &from_len,
                    ((void*)0),
                    ((void*)0)) != SOCKET_ERROR) {


      handle->recv_cb(handle, bytes, &buf, (const struct sockaddr*) &from, 0);
    } else {
      err = WSAGetLastError();
      if (err == WSAEMSGSIZE) {

        handle->recv_cb(handle,
                        bytes,
                        &buf,
                        (const struct sockaddr*) &from,
                        UV_UDP_PARTIAL);
      } else if (err == WSAEWOULDBLOCK) {

        handle->recv_cb(handle, 0, &buf, ((void*)0), 0);
      } else if (err == WSAECONNRESET || err == WSAENETRESET) {



        handle->recv_cb(handle, 0, &buf, ((void*)0), 0);
      } else {

        uv_udp_recv_stop(handle);
        handle->recv_cb(handle, uv_translate_sys_error(err), &buf, ((void*)0), 0);
      }
    }
  }

done:

  if ((handle->flags & UV_HANDLE_READING) &&
      !(handle->flags & UV_HANDLE_READ_PENDING)) {
    uv_udp_queue_recv(loop, handle);
  }

  DECREASE_PENDING_REQ_COUNT(handle);
}
