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
struct list_head {int dummy; } ;
struct flush_busy_ctx_data {struct list_head* list; struct blk_mq_hw_ctx* hctx; } ;
struct blk_mq_hw_ctx {int /*<<< orphan*/  ctx_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  flush_busy_ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct flush_busy_ctx_data*) ; 

void FUNC1(struct blk_mq_hw_ctx *hctx, struct list_head *list)
{
	struct flush_busy_ctx_data data = {
		.hctx = hctx,
		.list = list,
	};

	FUNC0(&hctx->ctx_map, flush_busy_ctx, &data);
}