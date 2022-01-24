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
struct st_h2o_mruby_channel_context_t {int /*<<< orphan*/  receivers; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_mruby_channel_context_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(mrb_state *mrb, void *_ctx)
{
    struct st_h2o_mruby_channel_context_t *ctx = _ctx;
    FUNC0(ctx != NULL); /* ctx can only be disposed by gc, so data binding has been never removed */
    FUNC2(mrb, ctx->receivers);
    FUNC1(ctx);
}