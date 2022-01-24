#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* data; } ;
typedef  TYPE_1__ uv_req_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_7__ {TYPE_1__ async_req; int /*<<< orphan*/  async_cb; scalar_t__ async_sent; } ;
typedef  TYPE_2__ uv_async_t ;
typedef  int /*<<< orphan*/  uv_async_cb ;

/* Variables and functions */
 int /*<<< orphan*/  UV_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UV_WAKEUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

int FUNC3(uv_loop_t* loop, uv_async_t* handle, uv_async_cb async_cb) {
  uv_req_t* req;

  FUNC1(loop, (uv_handle_t*) handle, UV_ASYNC);
  handle->async_sent = 0;
  handle->async_cb = async_cb;

  req = &handle->async_req;
  FUNC0(req, UV_WAKEUP);
  req->data = handle;

  FUNC2(handle);

  return 0;
}