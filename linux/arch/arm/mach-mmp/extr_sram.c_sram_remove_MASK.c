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
struct sram_bank_info {struct sram_bank_info* pool_name; int /*<<< orphan*/  sram_virt; int /*<<< orphan*/  gpool; int /*<<< orphan*/  node; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sram_bank_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sram_bank_info* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  sram_lock ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct sram_bank_info *info;

	info = FUNC6(pdev);
	if (info == NULL)
		return -ENODEV;

	FUNC4(&sram_lock);
	FUNC3(&info->node);
	FUNC5(&sram_lock);

	FUNC0(info->gpool);
	FUNC1(info->sram_virt);
	FUNC2(info->pool_name);
	FUNC2(info);
	return 0;
}