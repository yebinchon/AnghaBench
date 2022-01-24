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
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_6__ {struct poll_ctx* poll_ctx; int /*<<< orphan*/ * loop; } ;
typedef  TYPE_1__ uv_fs_poll_t ;
typedef  int /*<<< orphan*/  uv_fs_poll_cb ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
struct poll_ctx {unsigned int interval; struct poll_ctx* previous; int /*<<< orphan*/  path; int /*<<< orphan*/  fs_req; TYPE_2__ timer_handle; TYPE_1__* parent_handle; int /*<<< orphan*/  start_time; int /*<<< orphan*/  poll_cb; int /*<<< orphan*/ * loop; } ;

/* Variables and functions */
 int UV_ENOMEM ; 
 int /*<<< orphan*/  UV_HANDLE_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  poll_cb ; 
 size_t FUNC1 (char const*) ; 
 struct poll_ctx* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct poll_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 

int FUNC10(uv_fs_poll_t* handle,
                     uv_fs_poll_cb cb,
                     const char* path,
                     unsigned int interval) {
  struct poll_ctx* ctx;
  uv_loop_t* loop;
  size_t len;
  int err;

  if (FUNC7((uv_handle_t*)handle))
    return 0;

  loop = handle->loop;
  len = FUNC1(path);
  ctx = FUNC2(1, sizeof(*ctx) + len);

  if (ctx == NULL)
    return UV_ENOMEM;

  ctx->loop = loop;
  ctx->poll_cb = cb;
  ctx->interval = interval ? interval : 1;
  ctx->start_time = FUNC8(loop);
  ctx->parent_handle = handle;
  FUNC0(ctx->path, path, len + 1);

  err = FUNC9(loop, &ctx->timer_handle);
  if (err < 0)
    goto error;

  ctx->timer_handle.flags |= UV_HANDLE_INTERNAL;
  FUNC5(&ctx->timer_handle);

  err = FUNC6(loop, &ctx->fs_req, ctx->path, poll_cb);
  if (err < 0)
    goto error;

  if (handle->poll_ctx != NULL)
    ctx->previous = handle->poll_ctx;
  handle->poll_ctx = ctx;
  FUNC4(handle);

  return 0;

error:
  FUNC3(ctx);
  return err;
}