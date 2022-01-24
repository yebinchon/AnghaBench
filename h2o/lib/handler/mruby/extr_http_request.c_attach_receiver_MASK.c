#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_mruby_http_request_context_t {TYPE_2__* ctx; int /*<<< orphan*/  receiver; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_4__ {TYPE_1__* shared; } ;
struct TYPE_3__ {int /*<<< orphan*/  mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct st_h2o_mruby_http_request_context_t *ctx, mrb_value receiver)
{
    FUNC0(FUNC2(ctx->receiver));
    ctx->receiver = receiver;
    FUNC1(ctx->ctx->shared->mrb, receiver);
}