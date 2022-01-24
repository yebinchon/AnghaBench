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
struct TYPE_6__ {scalar_t__ type; } ;
typedef  TYPE_1__ uv_req_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_7__ {scalar_t__ type; int flags; int /*<<< orphan*/  (* async_cb ) (TYPE_2__*) ;scalar_t__ async_sent; } ;
typedef  TYPE_2__ uv_async_t ;

/* Variables and functions */
 scalar_t__ UV_ASYNC ; 
 int UV_HANDLE_CLOSING ; 
 scalar_t__ UV_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(uv_loop_t* loop, uv_async_t* handle,
    uv_req_t* req) {
  FUNC0(handle->type == UV_ASYNC);
  FUNC0(req->type == UV_WAKEUP);

  handle->async_sent = 0;

  if (handle->flags & UV_HANDLE_CLOSING) {
    FUNC2(loop, (uv_handle_t*)handle);
  } else if (handle->async_cb != NULL) {
    handle->async_cb(handle);
  }
}