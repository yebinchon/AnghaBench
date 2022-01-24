#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_loop_t ;
struct TYPE_3__ {scalar_t__ type; int flags; int /*<<< orphan*/  async_req; int /*<<< orphan*/  async_sent; int /*<<< orphan*/ * loop; } ;
typedef  TYPE_1__ uv_async_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ UV_ASYNC ; 
 int UV_HANDLE_CLOSING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(uv_async_t* handle) {
  uv_loop_t* loop = handle->loop;

  if (handle->type != UV_ASYNC) {
    /* Can't set errno because that's not thread-safe. */
    return -1;
  }

  /* The user should make sure never to call uv_async_send to a closing or
   * closed handle. */
  FUNC1(!(handle->flags & UV_HANDLE_CLOSING));

  if (!FUNC2(&handle->async_sent)) {
    FUNC0(loop, &handle->async_req);
  }

  return 0;
}