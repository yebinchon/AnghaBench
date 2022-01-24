#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_4__ {struct poll_ctx* poll_ctx; } ;
typedef  TYPE_1__ uv_fs_poll_t ;
struct poll_ctx {int /*<<< orphan*/  timer_handle; TYPE_1__* parent_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  timer_close_cb ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(uv_fs_poll_t* handle) {
  struct poll_ctx* ctx;

  if (!FUNC3((uv_handle_t*)handle))
    return 0;

  ctx = handle->poll_ctx;
  FUNC0(ctx != NULL);
  FUNC0(ctx->parent_handle == handle);

  /* Close the timer if it's active. If it's inactive, there's a stat request
   * in progress and poll_cb will take care of the cleanup.
   */
  if (FUNC3((uv_handle_t*)&ctx->timer_handle))
    FUNC2((uv_handle_t*)&ctx->timer_handle, timer_close_cb);

  FUNC1(handle);

  return 0;
}