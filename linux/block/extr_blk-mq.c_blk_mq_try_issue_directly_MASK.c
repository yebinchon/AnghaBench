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
struct blk_mq_hw_ctx {int flags; } ;
typedef  scalar_t__ blk_status_t ;
typedef  int /*<<< orphan*/  blk_qc_t ;

/* Variables and functions */
 int BLK_MQ_F_BLOCKING ; 
 scalar_t__ BLK_STS_DEV_RESOURCE ; 
 scalar_t__ BLK_STS_OK ; 
 scalar_t__ BLK_STS_RESOURCE ; 
 scalar_t__ FUNC0 (struct blk_mq_hw_ctx*,struct request*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct blk_mq_hw_ctx*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct blk_mq_hw_ctx*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct blk_mq_hw_ctx *hctx,
		struct request *rq, blk_qc_t *cookie)
{
	blk_status_t ret;
	int srcu_idx;

	FUNC5(hctx->flags & BLK_MQ_F_BLOCKING);

	FUNC3(hctx, &srcu_idx);

	ret = FUNC0(hctx, rq, cookie, false, true);
	if (ret == BLK_STS_RESOURCE || ret == BLK_STS_DEV_RESOURCE)
		FUNC2(rq, true);
	else if (ret != BLK_STS_OK)
		FUNC1(rq, ret);

	FUNC4(hctx, srcu_idx);
}