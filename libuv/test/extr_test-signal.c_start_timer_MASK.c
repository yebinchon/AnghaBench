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
typedef  int /*<<< orphan*/  uv_loop_t ;
struct timer_ctx {int signum; int /*<<< orphan*/  handle; scalar_t__ ncalls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  timer_cb ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(uv_loop_t* loop, int signum, struct timer_ctx* ctx) {
  ctx->ncalls = 0;
  ctx->signum = signum;
  FUNC0(0 == FUNC1(loop, &ctx->handle));
  FUNC0(0 == FUNC2(&ctx->handle, timer_cb, 5, 5));
}