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
struct blk_mq_hw_ctx {size_t type; int /*<<< orphan*/  ctx_map; } ;
struct blk_mq_ctx {int* index_hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const) ; 

__attribute__((used)) static void FUNC1(struct blk_mq_hw_ctx *hctx,
				      struct blk_mq_ctx *ctx)
{
	const int bit = ctx->index_hw[hctx->type];

	FUNC0(&hctx->ctx_map, bit);
}