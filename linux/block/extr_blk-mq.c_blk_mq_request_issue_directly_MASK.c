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
struct request {struct blk_mq_hw_ctx* mq_hctx; } ;
struct blk_mq_hw_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
typedef  int /*<<< orphan*/  blk_qc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blk_mq_hw_ctx*,struct request*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_mq_hw_ctx*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_mq_hw_ctx*,int) ; 

blk_status_t FUNC3(struct request *rq, bool last)
{
	blk_status_t ret;
	int srcu_idx;
	blk_qc_t unused_cookie;
	struct blk_mq_hw_ctx *hctx = rq->mq_hctx;

	FUNC1(hctx, &srcu_idx);
	ret = FUNC0(hctx, rq, &unused_cookie, true, last);
	FUNC2(hctx, srcu_idx);

	return ret;
}