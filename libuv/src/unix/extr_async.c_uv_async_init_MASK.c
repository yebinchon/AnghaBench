#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  async_handles; } ;
typedef  TYPE_1__ uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_9__ {int /*<<< orphan*/  queue; scalar_t__ pending; int /*<<< orphan*/  async_cb; } ;
typedef  TYPE_2__ uv_async_t ;
typedef  int /*<<< orphan*/  uv_async_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UV_ASYNC ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

int FUNC4(uv_loop_t* loop, uv_async_t* handle, uv_async_cb async_cb) {
  int err;

  err = FUNC1(loop);
  if (err)
    return err;

  FUNC2(loop, (uv_handle_t*)handle, UV_ASYNC);
  handle->async_cb = async_cb;
  handle->pending = 0;

  FUNC0(&loop->async_handles, &handle->queue);
  FUNC3(handle);

  return 0;
}