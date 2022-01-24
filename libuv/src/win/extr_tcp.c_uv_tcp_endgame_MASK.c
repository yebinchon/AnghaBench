#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_13__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ wait_handle; int /*<<< orphan*/ * event_handle; } ;
struct TYPE_21__ {TYPE_7__* accept_reqs; } ;
struct TYPE_22__ {TYPE_3__ serv; } ;
struct TYPE_19__ {scalar_t__ write_reqs_pending; TYPE_13__* shutdown_req; } ;
struct TYPE_20__ {TYPE_1__ conn; } ;
struct TYPE_24__ {int flags; scalar_t__ reqs_pending; TYPE_5__ read_req; TYPE_4__ tcp; int /*<<< orphan*/  socket; TYPE_2__ stream; } ;
typedef  TYPE_6__ uv_tcp_t ;
struct TYPE_25__ {scalar_t__ wait_handle; int /*<<< orphan*/ * event_handle; } ;
typedef  TYPE_7__ uv_tcp_accept_t ;
struct TYPE_26__ {int /*<<< orphan*/  active_tcp_streams; } ;
typedef  TYPE_8__ uv_loop_t ;
struct TYPE_18__ {int /*<<< orphan*/  (* cb ) (TYPE_13__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int ERROR_OPERATION_ABORTED ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  INVALID_SOCKET ; 
 int /*<<< orphan*/  SD_SEND ; 
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,TYPE_6__*,TYPE_13__*) ; 
 int UV_HANDLE_CLOSED ; 
 int UV_HANDLE_CLOSING ; 
 int UV_HANDLE_CONNECTION ; 
 int UV_HANDLE_EMULATE_IOCP ; 
 int UV_HANDLE_TCP_SOCKET_CLOSED ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 unsigned int uv_simultaneous_server_accepts ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

void FUNC12(uv_loop_t* loop, uv_tcp_t* handle) {
  int err;
  unsigned int i;
  uv_tcp_accept_t* req;

  if (handle->flags & UV_HANDLE_CONNECTION &&
      handle->stream.conn.shutdown_req != NULL &&
      handle->stream.conn.write_reqs_pending == 0) {

    FUNC2(loop, handle, handle->stream.conn.shutdown_req);

    err = 0;
    if (handle->flags & UV_HANDLE_CLOSING) {
      err = ERROR_OPERATION_ABORTED;
    } else if (FUNC7(handle->socket, SD_SEND) == SOCKET_ERROR) {
      err = FUNC4();
    }

    if (handle->stream.conn.shutdown_req->cb) {
      handle->stream.conn.shutdown_req->cb(handle->stream.conn.shutdown_req,
                               FUNC11(err));
    }

    handle->stream.conn.shutdown_req = NULL;
    FUNC1(handle);
    return;
  }

  if (handle->flags & UV_HANDLE_CLOSING &&
      handle->reqs_pending == 0) {
    FUNC5(!(handle->flags & UV_HANDLE_CLOSED));

    if (!(handle->flags & UV_HANDLE_TCP_SOCKET_CLOSED)) {
      FUNC6(handle->socket);
      handle->socket = INVALID_SOCKET;
      handle->flags |= UV_HANDLE_TCP_SOCKET_CLOSED;
    }

    if (!(handle->flags & UV_HANDLE_CONNECTION) && handle->tcp.serv.accept_reqs) {
      if (handle->flags & UV_HANDLE_EMULATE_IOCP) {
        for (i = 0; i < uv_simultaneous_server_accepts; i++) {
          req = &handle->tcp.serv.accept_reqs[i];
          if (req->wait_handle != INVALID_HANDLE_VALUE) {
            FUNC3(req->wait_handle);
            req->wait_handle = INVALID_HANDLE_VALUE;
          }
          if (req->event_handle) {
            FUNC0(req->event_handle);
            req->event_handle = NULL;
          }
        }
      }

      FUNC9(handle->tcp.serv.accept_reqs);
      handle->tcp.serv.accept_reqs = NULL;
    }

    if (handle->flags & UV_HANDLE_CONNECTION &&
        handle->flags & UV_HANDLE_EMULATE_IOCP) {
      if (handle->read_req.wait_handle != INVALID_HANDLE_VALUE) {
        FUNC3(handle->read_req.wait_handle);
        handle->read_req.wait_handle = INVALID_HANDLE_VALUE;
      }
      if (handle->read_req.event_handle) {
        FUNC0(handle->read_req.event_handle);
        handle->read_req.event_handle = NULL;
      }
    }

    FUNC10(handle);
    loop->active_tcp_streams--;
  }
}