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
struct request {int dummy; } ;
struct dispatch_rq_data {struct request* rq; struct blk_mq_hw_ctx* hctx; } ;
struct blk_mq_hw_ctx {size_t type; int /*<<< orphan*/  ctx_map; } ;
struct blk_mq_ctx {unsigned int* index_hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,struct dispatch_rq_data*) ; 
 int /*<<< orphan*/  dispatch_rq_from_ctx ; 

struct request *FUNC1(struct blk_mq_hw_ctx *hctx,
					struct blk_mq_ctx *start)
{
	unsigned off = start ? start->index_hw[hctx->type] : 0;
	struct dispatch_rq_data data = {
		.hctx = hctx,
		.rq   = NULL,
	};

	FUNC0(&hctx->ctx_map, off,
			       dispatch_rq_from_ctx, &data);

	return data.rq;
}