#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  command; } ;
struct st_h2o_mruby_redis_command_context_t {TYPE_3__* client; TYPE_2__ refs; int /*<<< orphan*/  receiver; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_8__ {TYPE_1__* shared; } ;
struct TYPE_7__ {TYPE_4__* ctx; } ;
struct TYPE_5__ {int /*<<< orphan*/ * mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_h2o_mruby_redis_command_context_t*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct st_h2o_mruby_redis_command_context_t *ctx, mrb_value reply)
{
    mrb_state *mrb = ctx->client->ctx->shared->mrb;
    if (FUNC4(ctx->receiver)) {
        FUNC3(mrb, ctx->refs.command, "_on_reply", 1, reply);
        FUNC1(mrb);
    } else {
        FUNC2(ctx->client->ctx, FUNC0(ctx, 1), reply, NULL);
    }
}