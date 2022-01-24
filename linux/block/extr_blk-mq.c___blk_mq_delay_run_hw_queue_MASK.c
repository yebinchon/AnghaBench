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
struct blk_mq_hw_ctx {int flags; int /*<<< orphan*/  run_work; int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int BLK_MQ_F_BLOCKING ; 
 int /*<<< orphan*/  FUNC0 (struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_mq_hw_ctx*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct blk_mq_hw_ctx *hctx, bool async,
					unsigned long msecs)
{
	if (FUNC8(FUNC2(hctx)))
		return;

	if (!async && !(hctx->flags & BLK_MQ_F_BLOCKING)) {
		int cpu = FUNC4();
		if (FUNC3(cpu, hctx->cpumask)) {
			FUNC0(hctx);
			FUNC7();
			return;
		}

		FUNC7();
	}

	FUNC5(FUNC1(hctx), &hctx->run_work,
				    FUNC6(msecs));
}