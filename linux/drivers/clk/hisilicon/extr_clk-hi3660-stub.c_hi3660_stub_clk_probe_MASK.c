#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  hw; } ;
struct TYPE_6__ {int tx_block; int knows_txdone; int /*<<< orphan*/ * tx_done; struct device* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  mbox; TYPE_2__ cl; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 unsigned int HI3660_CLK_STUB_NUM ; 
 scalar_t__ HI3660_STUB_CLOCK_DATA ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ freq_reg ; 
 int /*<<< orphan*/  hi3660_stub_clk_hw_get ; 
 TYPE_3__* hi3660_stub_clks ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 TYPE_1__ stub_clk_chan ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;
	unsigned int i;
	int ret;

	/* Use mailbox client without blocking */
	stub_clk_chan.cl.dev = dev;
	stub_clk_chan.cl.tx_done = NULL;
	stub_clk_chan.cl.tx_block = false;
	stub_clk_chan.cl.knows_txdone = false;

	/* Allocate mailbox channel */
	stub_clk_chan.mbox = FUNC5(&stub_clk_chan.cl, 0);
	if (FUNC0(stub_clk_chan.mbox))
		return FUNC1(stub_clk_chan.mbox);

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -EINVAL;
	freq_reg = FUNC3(dev, res->start, FUNC7(res));
	if (!freq_reg)
		return -ENOMEM;

	freq_reg += HI3660_STUB_CLOCK_DATA;

	for (i = 0; i < HI3660_CLK_STUB_NUM; i++) {
		ret = FUNC2(&pdev->dev, &hi3660_stub_clks[i].hw);
		if (ret)
			return ret;
	}

	return FUNC4(&pdev->dev, hi3660_stub_clk_hw_get,
					   hi3660_stub_clks);
}