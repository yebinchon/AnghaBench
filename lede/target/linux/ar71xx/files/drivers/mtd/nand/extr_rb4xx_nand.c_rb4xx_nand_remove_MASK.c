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
struct rb4xx_nand_info {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RB4XX_NAND_GPIO_ALE ; 
 int /*<<< orphan*/  RB4XX_NAND_GPIO_CLE ; 
 int /*<<< orphan*/  RB4XX_NAND_GPIO_NCE ; 
 int /*<<< orphan*/  RB4XX_NAND_GPIO_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rb4xx_nand_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct rb4xx_nand_info* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rb4xx_nand_info*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct rb4xx_nand_info *info = FUNC3(pdev);

	FUNC2(FUNC5(info));
	FUNC4(pdev, NULL);
	FUNC1(info);
	FUNC0(RB4XX_NAND_GPIO_NCE);
	FUNC0(RB4XX_NAND_GPIO_CLE);
	FUNC0(RB4XX_NAND_GPIO_ALE);
	FUNC0(RB4XX_NAND_GPIO_READY);

	return 0;
}