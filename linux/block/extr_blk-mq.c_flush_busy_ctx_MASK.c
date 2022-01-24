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
struct sbitmap {int dummy; } ;
struct flush_busy_ctx_data {int /*<<< orphan*/  list; struct blk_mq_hw_ctx* hctx; } ;
struct blk_mq_hw_ctx {int type; struct blk_mq_ctx** ctxs; } ;
struct blk_mq_ctx {int /*<<< orphan*/  lock; int /*<<< orphan*/ * rq_lists; } ;
typedef  enum hctx_type { ____Placeholder_hctx_type } hctx_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sbitmap*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct sbitmap *sb, unsigned int bitnr, void *data)
{
	struct flush_busy_ctx_data *flush_data = data;
	struct blk_mq_hw_ctx *hctx = flush_data->hctx;
	struct blk_mq_ctx *ctx = hctx->ctxs[bitnr];
	enum hctx_type type = hctx->type;

	FUNC2(&ctx->lock);
	FUNC0(&ctx->rq_lists[type], flush_data->list);
	FUNC1(sb, bitnr);
	FUNC3(&ctx->lock);
	return true;
}