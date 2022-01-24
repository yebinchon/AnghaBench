#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENAVAIL ; 
 int ENOENT ; 
 int /*<<< orphan*/  GPTU_ID ; 
 int GPTU_MAGIC ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  TIMER1A ; 
 int /*<<< orphan*/  TIMER1B ; 
 int /*<<< orphan*/  TIMER2A ; 
 int /*<<< orphan*/  TIMER2B ; 
 int /*<<< orphan*/  TIMER3A ; 
 int /*<<< orphan*/  TIMER3B ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 struct clk* FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct clk*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 struct clk* FUNC9 (TYPE_1__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct clk* gptu_membase ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irqres ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct clk *clk;
	struct resource *res;

	if (FUNC13(pdev->dev.of_node, irqres, 6) != 6) {
		FUNC7(&pdev->dev, "Failed to get IRQ list\n");
		return -EINVAL;
	}

	res = FUNC14(pdev, IORESOURCE_MEM, 0);

	/* remap gptu register range */
	gptu_membase = FUNC9(&pdev->dev, res);
	if (FUNC0(gptu_membase))
		return FUNC1(gptu_membase);

	/* enable our clock */
	clk = FUNC4(&pdev->dev, NULL);
	if (FUNC0(clk)) {
		FUNC7(&pdev->dev, "Failed to get clock\n");
		return -ENOENT;
	}
	FUNC3(clk);

	/* power up the core */
	FUNC11();

	/* the gptu has a ID register */
	if (((FUNC12(GPTU_ID) >> 8) & 0xff) != GPTU_MAGIC) {
		FUNC7(&pdev->dev, "Failed to find magic\n");
		FUNC10();
		FUNC2(clk);
		FUNC5(clk);
		return -ENAVAIL;
	}

	/* register the clocks */
	FUNC6(&pdev->dev, "timer1a", TIMER1A);
	FUNC6(&pdev->dev, "timer1b", TIMER1B);
	FUNC6(&pdev->dev, "timer2a", TIMER2A);
	FUNC6(&pdev->dev, "timer2b", TIMER2B);
	FUNC6(&pdev->dev, "timer3a", TIMER3A);
	FUNC6(&pdev->dev, "timer3b", TIMER3B);

	FUNC8(&pdev->dev, "gptu: 6 timers loaded\n");

	return 0;
}