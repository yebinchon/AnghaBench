#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct pxa3xx_u2d_platform_data {int /*<<< orphan*/  (* exit ) (TYPE_2__*) ;} ;
struct TYPE_5__ {struct pxa3xx_u2d_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  clk; int /*<<< orphan*/  mmio_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 TYPE_1__* u2d ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct pxa3xx_u2d_platform_data *pdata = pdev->dev.platform_data;
	struct resource *r;

	if (FUNC1()) {
		FUNC7();
		FUNC6();
	}

	if (pdata->exit)
		pdata->exit(&pdev->dev);

	FUNC5(pdev, NULL);
	FUNC2(u2d->mmio_base);
	r = FUNC4(pdev, IORESOURCE_MEM, 0);
	FUNC8(r->start, FUNC9(r));

	FUNC0(u2d->clk);

	FUNC3(u2d);

	return 0;
}