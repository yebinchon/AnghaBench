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
struct sh_cmt_channel {TYPE_3__* cmt; int /*<<< orphan*/  index; } ;
struct TYPE_6__ {int /*<<< orphan*/  clk; TYPE_2__* pdev; TYPE_1__* info; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int width; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int SH_CMT16_CMCSR_CKS512 ; 
 int SH_CMT16_CMCSR_CMIE ; 
 int SH_CMT32_CMCSR_CKS_RCLK8 ; 
 int SH_CMT32_CMCSR_CMM ; 
 int SH_CMT32_CMCSR_CMR_IRQ ; 
 int SH_CMT32_CMCSR_CMTOUT_IE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct sh_cmt_channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct sh_cmt_channel*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sh_cmt_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sh_cmt_channel*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sh_cmt_channel*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct sh_cmt_channel *ch)
{
	int k, ret;

	FUNC4(&ch->cmt->pdev->dev);
	FUNC3(&ch->cmt->pdev->dev, true);

	/* enable clock */
	ret = FUNC1(ch->cmt->clk);
	if (ret) {
		FUNC2(&ch->cmt->pdev->dev, "ch%u: cannot enable clock\n",
			ch->index);
		goto err0;
	}

	/* make sure channel is disabled */
	FUNC6(ch, 0);

	/* configure channel, periodic mode and maximum timeout */
	if (ch->cmt->info->width == 16) {
		FUNC9(ch, SH_CMT16_CMCSR_CMIE |
				   SH_CMT16_CMCSR_CKS512);
	} else {
		FUNC9(ch, SH_CMT32_CMCSR_CMM |
				   SH_CMT32_CMCSR_CMTOUT_IE |
				   SH_CMT32_CMCSR_CMR_IRQ |
				   SH_CMT32_CMCSR_CKS_RCLK8);
	}

	FUNC8(ch, 0xffffffff);
	FUNC7(ch, 0);

	/*
	 * According to the sh73a0 user's manual, as CMCNT can be operated
	 * only by the RCLK (Pseudo 32 KHz), there's one restriction on
	 * modifying CMCNT register; two RCLK cycles are necessary before
	 * this register is either read or any modification of the value
	 * it holds is reflected in the LSI's actual operation.
	 *
	 * While at it, we're supposed to clear out the CMCNT as of this
	 * moment, so make sure it's processed properly here.  This will
	 * take RCLKx2 at maximum.
	 */
	for (k = 0; k < 100; k++) {
		if (!FUNC5(ch))
			break;
		FUNC10(1);
	}

	if (FUNC5(ch)) {
		FUNC2(&ch->cmt->pdev->dev, "ch%u: cannot clear CMCNT\n",
			ch->index);
		ret = -ETIMEDOUT;
		goto err1;
	}

	/* enable channel */
	FUNC6(ch, 1);
	return 0;
 err1:
	/* stop clock */
	FUNC0(ch->cmt->clk);

 err0:
	return ret;
}