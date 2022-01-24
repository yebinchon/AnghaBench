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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EP93XX_SYSCON_DEVCFG_EXVC ; 
 int EP93XX_SYSCON_DEVCFG_RAS ; 
 int EP93XX_SYSCON_DEVCFG_RASONP3 ; 
 int /*<<< orphan*/  GPIOF_INIT_HIGH ; 
 int /*<<< orphan*/  VISION_LCD_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	int err;

	err = FUNC2(VISION_LCD_ENABLE, GPIOF_INIT_HIGH,
				FUNC0(&pdev->dev));
	if (err)
		return err;

	FUNC1(EP93XX_SYSCON_DEVCFG_RAS |
				 EP93XX_SYSCON_DEVCFG_RASONP3 |
				 EP93XX_SYSCON_DEVCFG_EXVC);

	return 0;
}