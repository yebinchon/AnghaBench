#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_12__ ;

/* Type definitions */
struct TYPE_19__ {void* InternalHigh; } ;
struct TYPE_25__ {char* base; scalar_t__ len; } ;
struct TYPE_20__ {TYPE_12__ overlapped; } ;
struct TYPE_21__ {TYPE_1__ io; } ;
struct TYPE_23__ {TYPE_2__ u; } ;
struct TYPE_22__ {int flags; int recv_from_len; int (* func_wsarecvfrom ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,void**,void**,struct sockaddr*,int*,TYPE_12__*,int /*<<< orphan*/ *) ;int (* func_wsarecv ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,void**,void**,TYPE_12__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  reqs_pending; int /*<<< orphan*/  socket; TYPE_12__ recv_from; TYPE_6__ recv_buffer; int /*<<< orphan*/  (* recv_cb ) (TYPE_3__*,int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* alloc_cb ) (int /*<<< orphan*/ *,int,TYPE_6__*) ;TYPE_4__ recv_req; } ;
typedef  TYPE_3__ uv_udp_t ;
typedef  TYPE_4__ uv_req_t ;
struct TYPE_24__ {scalar_t__ active_udp_streams; } ;
typedef  TYPE_5__ uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  TYPE_6__ uv_buf_t ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  WSABUF ;
typedef  void* DWORD ;

/* Variables and functions */
 void* MSG_PEEK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UV_ENOBUFS ; 
 int UV_HANDLE_READING ; 
 int UV_HANDLE_READ_PENDING ; 
 int UV_HANDLE_ZERO_READ ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_12__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,void**,void**,struct sockaddr*,int*,TYPE_12__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,void**,void**,TYPE_12__*,int /*<<< orphan*/ *) ; 
 scalar_t__ uv_active_udp_streams_threshold ; 
 TYPE_6__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ uv_zero_ ; 

__attribute__((used)) static void FUNC12(uv_loop_t* loop, uv_udp_t* handle) {
  uv_req_t* req;
  uv_buf_t buf;
  DWORD bytes, flags;
  int result;

  FUNC4(handle->flags & UV_HANDLE_READING);
  FUNC4(!(handle->flags & UV_HANDLE_READ_PENDING));

  req = &handle->recv_req;
  FUNC5(&req->u.io.overlapped, 0, sizeof(req->u.io.overlapped));

  /*
   * Preallocate a read buffer if the number of active streams is below
   * the threshold.
  */
  if (loop->active_udp_streams < uv_active_udp_streams_threshold) {
    handle->flags &= ~UV_HANDLE_ZERO_READ;

    handle->recv_buffer = FUNC10(NULL, 0);
    handle->alloc_cb((uv_handle_t*) handle, 65536, &handle->recv_buffer);
    if (handle->recv_buffer.base == NULL || handle->recv_buffer.len == 0) {
      handle->recv_cb(handle, UV_ENOBUFS, &handle->recv_buffer, NULL, 0);
      return;
    }
    FUNC4(handle->recv_buffer.base != NULL);

    buf = handle->recv_buffer;
    FUNC5(&handle->recv_from, 0, sizeof handle->recv_from);
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
                                      NULL);

    if (FUNC1(result == 0)) {
      /* Process the req without IOCP. */
      handle->flags |= UV_HANDLE_READ_PENDING;
      req->u.io.overlapped.InternalHigh = bytes;
      handle->reqs_pending++;
      FUNC11(loop, req);
    } else if (FUNC2(result == 0)) {
      /* The req will be processed with IOCP. */
      handle->flags |= UV_HANDLE_READ_PENDING;
      handle->reqs_pending++;
    } else {
      /* Make this req pending reporting an error. */
      FUNC0(req, FUNC3());
      FUNC11(loop, req);
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
                                  NULL);

    if (FUNC1(result == 0)) {
      /* Process the req without IOCP. */
      handle->flags |= UV_HANDLE_READ_PENDING;
      req->u.io.overlapped.InternalHigh = bytes;
      handle->reqs_pending++;
      FUNC11(loop, req);
    } else if (FUNC2(result == 0)) {
      /* The req will be processed with IOCP. */
      handle->flags |= UV_HANDLE_READ_PENDING;
      handle->reqs_pending++;
    } else {
      /* Make this req pending reporting an error. */
      FUNC0(req, FUNC3());
      FUNC11(loop, req);
      handle->reqs_pending++;
    }
  }
}