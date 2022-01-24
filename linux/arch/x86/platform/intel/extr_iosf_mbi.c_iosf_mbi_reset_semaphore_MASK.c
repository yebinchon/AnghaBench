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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_MBI_UNIT_PMC ; 
 int /*<<< orphan*/  MBI_PMIC_BUS_ACCESS_END ; 
 int /*<<< orphan*/  MBI_REG_READ ; 
 int /*<<< orphan*/  PM_QOS_DEFAULT_VALUE ; 
 int /*<<< orphan*/  PUNIT_SEMAPHORE_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iosf_mbi_pm_qos ; 
 int /*<<< orphan*/  iosf_mbi_pmic_bus_access_notifier ; 
 int /*<<< orphan*/  iosf_mbi_sem_address ; 
 TYPE_1__* mbi_pdev ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	if (FUNC2(BT_MBI_UNIT_PMC, MBI_REG_READ,
			    iosf_mbi_sem_address, 0, PUNIT_SEMAPHORE_BIT))
		FUNC1(&mbi_pdev->dev, "Error P-Unit semaphore reset failed\n");

	FUNC3(&iosf_mbi_pm_qos, PM_QOS_DEFAULT_VALUE);

	FUNC0(&iosf_mbi_pmic_bus_access_notifier,
				     MBI_PMIC_BUS_ACCESS_END, NULL);
}