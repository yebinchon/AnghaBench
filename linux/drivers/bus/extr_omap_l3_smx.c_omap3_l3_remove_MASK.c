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
struct platform_device {int dummy; } ;
struct omap3_l3 {int /*<<< orphan*/  rt; int /*<<< orphan*/  debug_irq; int /*<<< orphan*/  app_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct omap3_l3*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap3_l3*) ; 
 struct omap3_l3* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct omap3_l3         *l3 = FUNC3(pdev);

	FUNC0(l3->app_irq, l3);
	FUNC0(l3->debug_irq, l3);
	FUNC1(l3->rt);
	FUNC2(l3);

	return 0;
}