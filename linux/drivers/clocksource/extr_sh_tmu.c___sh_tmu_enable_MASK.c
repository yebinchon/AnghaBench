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
struct sh_tmu_channel {int /*<<< orphan*/  index; TYPE_2__* tmu; } ;
struct TYPE_4__ {TYPE_1__* pdev; int /*<<< orphan*/  clk; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCNT ; 
 int /*<<< orphan*/  TCOR ; 
 int /*<<< orphan*/  TCR ; 
 int TCR_TPSC_CLK4 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_tmu_channel*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_tmu_channel*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct sh_tmu_channel *ch)
{
	int ret;

	/* enable clock */
	ret = FUNC0(ch->tmu->clk);
	if (ret) {
		FUNC1(&ch->tmu->pdev->dev, "ch%u: cannot enable clock\n",
			ch->index);
		return ret;
	}

	/* make sure channel is disabled */
	FUNC2(ch, 0);

	/* maximum timeout */
	FUNC3(ch, TCOR, 0xffffffff);
	FUNC3(ch, TCNT, 0xffffffff);

	/* configure channel to parent clock / 4, irq off */
	FUNC3(ch, TCR, TCR_TPSC_CLK4);

	/* enable channel */
	FUNC2(ch, 1);

	return 0;
}