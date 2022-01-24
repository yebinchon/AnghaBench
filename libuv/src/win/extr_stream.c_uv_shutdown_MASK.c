#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_4__* shutdown_req; } ;
struct TYPE_12__ {TYPE_1__ conn; } ;
struct TYPE_13__ {int flags; int /*<<< orphan*/  reqs_pending; TYPE_2__ stream; int /*<<< orphan*/ * loop; } ;
typedef  TYPE_3__ uv_stream_t ;
struct TYPE_14__ {int /*<<< orphan*/  cb; TYPE_3__* handle; } ;
typedef  TYPE_4__ uv_shutdown_t ;
typedef  int /*<<< orphan*/  uv_shutdown_cb ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_4__*) ; 
 int UV_ENOTCONN ; 
 int UV_HANDLE_SHUTTING ; 
 int UV_HANDLE_WRITABLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UV_SHUTDOWN ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(uv_shutdown_t* req, uv_stream_t* handle, uv_shutdown_cb cb) {
  uv_loop_t* loop = handle->loop;

  if (!(handle->flags & UV_HANDLE_WRITABLE) ||
      handle->flags & UV_HANDLE_SHUTTING ||
      FUNC2(handle)) {
    return UV_ENOTCONN;
  }

  FUNC1(req, UV_SHUTDOWN);
  req->handle = handle;
  req->cb = cb;

  handle->flags &= ~UV_HANDLE_WRITABLE;
  handle->flags |= UV_HANDLE_SHUTTING;
  handle->stream.conn.shutdown_req = req;
  handle->reqs_pending++;
  FUNC0(loop, handle, req);

  FUNC3(loop, (uv_handle_t*)handle);

  return 0;
}