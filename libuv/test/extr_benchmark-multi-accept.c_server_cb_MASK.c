#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct server_ctx {int /*<<< orphan*/  server_handle; int /*<<< orphan*/  semaphore; int /*<<< orphan*/  async_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sv_async_cb ; 
 int /*<<< orphan*/  sv_connection_cb ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void *arg) {
  struct server_ctx *ctx;
  uv_loop_t loop;

  ctx = arg;
  FUNC0(0 == FUNC5(&loop));

  FUNC0(0 == FUNC2(&loop, &ctx->async_handle, sv_async_cb));
  FUNC9((uv_handle_t*) &ctx->async_handle);

  /* Wait until the main thread is ready. */
  FUNC8(&ctx->semaphore);
  FUNC1(&loop, (uv_stream_t*) &ctx->server_handle);
  FUNC7(&ctx->semaphore);

  /* Now start the actual benchmark. */
  FUNC0(0 == FUNC3((uv_stream_t*) &ctx->server_handle,
                        128,
                        sv_connection_cb));
  FUNC0(0 == FUNC6(&loop, UV_RUN_DEFAULT));

  FUNC4(&loop);
}