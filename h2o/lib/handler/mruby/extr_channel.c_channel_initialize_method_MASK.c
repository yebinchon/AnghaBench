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
struct st_h2o_mruby_channel_context_t {int /*<<< orphan*/  receivers; int /*<<< orphan*/ * ctx; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_8__ {TYPE_2__* ud; } ;
typedef  TYPE_1__ mrb_state ;
struct TYPE_9__ {int /*<<< orphan*/ * current_context; } ;
typedef  TYPE_2__ h2o_mruby_shared_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  channel_type ; 
 struct st_h2o_mruby_channel_context_t* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct st_h2o_mruby_channel_context_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct st_h2o_mruby_channel_context_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value FUNC8(mrb_state *mrb, mrb_value self)
{
    h2o_mruby_shared_context_t *shared_ctx = mrb->ud;

    struct st_h2o_mruby_channel_context_t *ctx;
    ctx = FUNC1(sizeof(*ctx));

    FUNC2(ctx, 0, sizeof(*ctx));
    FUNC0(shared_ctx->current_context != NULL);
    ctx->ctx = shared_ctx->current_context;
    ctx->receivers = FUNC3(mrb);
    FUNC5(mrb, ctx->receivers);

    FUNC7(mrb, self, FUNC6(mrb, "@queue"), FUNC3(mrb));

    FUNC4(self, ctx, &channel_type);

    return self;
}