#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct intel_soc_pmic {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct intel_soc_pmic* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intel_bxtwc_pmic_opregion_data ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct intel_soc_pmic *pmic = FUNC1(pdev->dev.parent);

	return FUNC2(&pdev->dev,
			FUNC0(pdev->dev.parent),
			pmic->regmap,
			&intel_bxtwc_pmic_opregion_data);
}