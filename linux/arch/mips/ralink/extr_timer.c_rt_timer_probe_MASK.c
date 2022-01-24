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
struct rt_timer {scalar_t__ irq; int timer_freq; int /*<<< orphan*/ * dev; struct clk* membase; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int TMR0CTL_PRESCALE_DIV ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 struct clk* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct clk* FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 struct rt_timer* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct rt_timer*) ; 
 int /*<<< orphan*/  FUNC11 (struct rt_timer*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct rt_timer*) ; 
 int /*<<< orphan*/  FUNC13 (struct rt_timer*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct resource *res = FUNC9(pdev, IORESOURCE_MEM, 0);
	struct rt_timer *rt;
	struct clk *clk;

	rt = FUNC7(&pdev->dev, sizeof(*rt), GFP_KERNEL);
	if (!rt) {
		FUNC3(&pdev->dev, "failed to allocate memory\n");
		return -ENOMEM;
	}

	rt->irq = FUNC8(pdev, 0);
	if (rt->irq < 0)
		return rt->irq;

	rt->membase = FUNC6(&pdev->dev, res);
	if (FUNC0(rt->membase))
		return FUNC1(rt->membase);

	clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(clk)) {
		FUNC3(&pdev->dev, "failed get clock rate\n");
		return FUNC1(clk);
	}

	rt->timer_freq = FUNC2(clk) / TMR0CTL_PRESCALE_DIV;
	if (!rt->timer_freq)
		return -EINVAL;

	rt->dev = &pdev->dev;
	FUNC10(pdev, rt);

	FUNC13(rt);
	FUNC11(rt, 2);
	FUNC12(rt);

	FUNC4(&pdev->dev, "maximum frequency is %luHz\n", rt->timer_freq);

	return 0;
}