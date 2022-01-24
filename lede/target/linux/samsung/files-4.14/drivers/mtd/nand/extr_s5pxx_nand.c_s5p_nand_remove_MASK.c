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
struct s5p_nand_host {int /*<<< orphan*/ * clk; int /*<<< orphan*/  nand_chip; } ;
struct platform_device {int dummy; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*) ; 
 struct mtd_info* FUNC2 (int /*<<< orphan*/ *) ; 
 struct s5p_nand_host* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct s5p_nand_host *host = FUNC3(pdev);
	struct mtd_info *mtd = FUNC2(&host->nand_chip);

	FUNC1(mtd);
	FUNC0(host->clk[0]);	/* nandxl */
	FUNC0(host->clk[1]);	/* nand */

	return 0;
}