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
struct st_h2o_mruby_channel_context_t {int /*<<< orphan*/  ctx; int /*<<< orphan*/  receivers; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  channel_type ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct st_h2o_mruby_channel_context_t* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static mrb_value FUNC8(mrb_state *mrb, mrb_value self)
{
    struct st_h2o_mruby_channel_context_t *ctx;
    ctx = FUNC3(mrb, self, &channel_type);

    if (FUNC0(ctx->receivers) != 0) {
        int gc_arena = FUNC5(mrb);
        mrb_value receiver = FUNC2(mrb, ctx->receivers);
        FUNC6(mrb, receiver);
        FUNC1(ctx->ctx, receiver, FUNC7(), NULL);
        FUNC4(mrb, gc_arena);
    }

    return FUNC7();
}