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
struct sh_mtu2_channel {TYPE_2__* mtu; int /*<<< orphan*/  index; } ;
struct TYPE_4__ {int /*<<< orphan*/  clk; TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  TCNT ; 
 int /*<<< orphan*/  TCR ; 
 unsigned long TCR_CCLR_TGRA ; 
 unsigned long TCR_TPSC_P64 ; 
 int /*<<< orphan*/  TGR ; 
 int /*<<< orphan*/  TIER ; 
 unsigned long TIER_TGIEA ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIOR ; 
 int /*<<< orphan*/  TIOR_OC_0_CLEAR ; 
 int /*<<< orphan*/  TMDR ; 
 unsigned long TMDR_MD_NORMAL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sh_mtu2_channel*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sh_mtu2_channel*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct sh_mtu2_channel *ch)
{
	unsigned long periodic;
	unsigned long rate;
	int ret;

	FUNC6(&ch->mtu->pdev->dev);
	FUNC5(&ch->mtu->pdev->dev, true);

	/* enable clock */
	ret = FUNC2(ch->mtu->clk);
	if (ret) {
		FUNC4(&ch->mtu->pdev->dev, "ch%u: cannot enable clock\n",
			ch->index);
		return ret;
	}

	/* make sure channel is disabled */
	FUNC7(ch, 0);

	rate = FUNC3(ch->mtu->clk) / 64;
	periodic = (rate + HZ/2) / HZ;

	/*
	 * "Periodic Counter Operation"
	 * Clear on TGRA compare match, divide clock by 64.
	 */
	FUNC8(ch, TCR, TCR_CCLR_TGRA | TCR_TPSC_P64);
	FUNC8(ch, TIOR, FUNC0(TIOR_OC_0_CLEAR) |
		      FUNC1(TIOR_OC_0_CLEAR));
	FUNC8(ch, TGR, periodic);
	FUNC8(ch, TCNT, 0);
	FUNC8(ch, TMDR, TMDR_MD_NORMAL);
	FUNC8(ch, TIER, TIER_TGIEA);

	/* enable channel */
	FUNC7(ch, 1);

	return 0;
}