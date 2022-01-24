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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct omap3_l3 {int /*<<< orphan*/  rt; void* debug_irq; void* app_irq; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct omap3_l3*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct omap3_l3*) ; 
 struct omap3_l3* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omap3_l3_app_irq ; 
 void* FUNC6 (struct platform_device*,int) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct omap3_l3*) ; 
 int FUNC9 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct omap3_l3*) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct omap3_l3 *l3;
	struct resource *res;
	int ret;

	l3 = FUNC5(sizeof(*l3), GFP_KERNEL);
	if (!l3)
		return -ENOMEM;

	FUNC8(pdev, l3);

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC0(&pdev->dev, "couldn't find resource\n");
		ret = -ENODEV;
		goto err0;
	}
	l3->rt = FUNC2(res->start, FUNC10(res));
	if (!l3->rt) {
		FUNC0(&pdev->dev, "ioremap failed\n");
		ret = -ENOMEM;
		goto err0;
	}

	l3->debug_irq = FUNC6(pdev, 0);
	ret = FUNC9(l3->debug_irq, omap3_l3_app_irq, IRQF_TRIGGER_RISING,
			  "l3-debug-irq", l3);
	if (ret) {
		FUNC0(&pdev->dev, "couldn't request debug irq\n");
		goto err1;
	}

	l3->app_irq = FUNC6(pdev, 1);
	ret = FUNC9(l3->app_irq, omap3_l3_app_irq, IRQF_TRIGGER_RISING,
			  "l3-app-irq", l3);
	if (ret) {
		FUNC0(&pdev->dev, "couldn't request app irq\n");
		goto err2;
	}

	return 0;

err2:
	FUNC1(l3->debug_irq, l3);
err1:
	FUNC3(l3->rt);
err0:
	FUNC4(l3);
	return ret;
}