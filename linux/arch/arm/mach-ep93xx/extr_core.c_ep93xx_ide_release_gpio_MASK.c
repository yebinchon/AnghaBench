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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EP93XX_GPIO_LINE_EGPIO15 ; 
 int /*<<< orphan*/  EP93XX_GPIO_LINE_EGPIO2 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EP93XX_SYSCON_DEVCFG_EONIDE ; 
 int EP93XX_SYSCON_DEVCFG_GONIDE ; 
 int EP93XX_SYSCON_DEVCFG_HONIDE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct platform_device *pdev)
{
	int i;

	for (i = 2; i < 8; i++)
		FUNC4(FUNC0(i));
	for (i = 4; i < 8; i++)
		FUNC4(FUNC1(i));
	for (i = 0; i < 8; i++)
		FUNC4(FUNC2(i));
	FUNC4(EP93XX_GPIO_LINE_EGPIO15);
	FUNC4(EP93XX_GPIO_LINE_EGPIO2);


	/* GPIO ports E[7:2], G[7:4] and H used by GPIO */
	FUNC3(EP93XX_SYSCON_DEVCFG_EONIDE |
			       EP93XX_SYSCON_DEVCFG_GONIDE |
			       EP93XX_SYSCON_DEVCFG_HONIDE);
}