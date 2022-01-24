#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_mruby_redis_command_context_t {TYPE_3__* client; int /*<<< orphan*/  receiver; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_6__ {TYPE_2__* ctx; } ;
struct TYPE_5__ {TYPE_1__* shared; } ;
struct TYPE_4__ {int /*<<< orphan*/  mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static mrb_value FUNC5(struct st_h2o_mruby_redis_command_context_t *ctx, int protect)
{
    mrb_value ret = ctx->receiver;
    FUNC0(!FUNC3(ret));
    ctx->receiver = FUNC4();
    FUNC2(ctx->client->ctx->shared->mrb, ret);
    if (protect)
        FUNC1(ctx->client->ctx->shared->mrb, ret);
    return ret;
}