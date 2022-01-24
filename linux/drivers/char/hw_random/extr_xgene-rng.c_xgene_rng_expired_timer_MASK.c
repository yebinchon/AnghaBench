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
struct xgene_rng_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  failure_timer; scalar_t__ failure_cnt; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 struct xgene_rng_dev* ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  failure_timer ; 
 struct xgene_rng_dev* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct xgene_rng_dev *ctx = FUNC3(ctx, t, failure_timer);

	/* Clear failure counter as timer expired */
	FUNC1(ctx->irq);
	ctx->failure_cnt = 0;
	FUNC0(&ctx->failure_timer);
	FUNC2(ctx->irq);
}