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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_MBI_UNIT_PMC ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MBI_PMIC_BUS_ACCESS_BEGIN ; 
 int /*<<< orphan*/  MBI_REG_WRITE ; 
 int /*<<< orphan*/  PUNIT_SEMAPHORE_ACQUIRE ; 
 int /*<<< orphan*/  SEMAPHORE_TIMEOUT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  iosf_mbi_pm_qos ; 
 int /*<<< orphan*/  iosf_mbi_pmic_access_mutex ; 
 int /*<<< orphan*/  iosf_mbi_pmic_access_waitq ; 
 int /*<<< orphan*/  iosf_mbi_pmic_bus_access_notifier ; 
 scalar_t__ iosf_mbi_pmic_i2c_access_count ; 
 scalar_t__ iosf_mbi_pmic_punit_access_count ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned long iosf_mbi_sem_acquired ; 
 int /*<<< orphan*/  iosf_mbi_sem_address ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 TYPE_1__* mbi_pdev ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 

int FUNC15(void)
{
	unsigned long start, end;
	int ret = 0;
	u32 sem;

	if (FUNC0(!mbi_pdev || !iosf_mbi_sem_address))
		return -ENXIO;

	FUNC9(&iosf_mbi_pmic_access_mutex);

	while (iosf_mbi_pmic_punit_access_count != 0) {
		FUNC10(&iosf_mbi_pmic_access_mutex);
		FUNC14(iosf_mbi_pmic_access_waitq,
			   iosf_mbi_pmic_punit_access_count == 0);
		FUNC9(&iosf_mbi_pmic_access_mutex);
	}

	if (iosf_mbi_pmic_i2c_access_count > 0)
		goto success;

	FUNC1(&iosf_mbi_pmic_bus_access_notifier,
				     MBI_PMIC_BUS_ACCESS_BEGIN, NULL);

	/*
	 * Disallow the CPU to enter C6 or C7 state, entering these states
	 * requires the P-Unit to talk to the PMIC and if this happens while
	 * we're holding the semaphore, the SoC hangs.
	 */
	FUNC11(&iosf_mbi_pm_qos, 0);

	/* host driver writes to side band semaphore register */
	ret = FUNC6(BT_MBI_UNIT_PMC, MBI_REG_WRITE,
			     iosf_mbi_sem_address, PUNIT_SEMAPHORE_ACQUIRE);
	if (ret) {
		FUNC3(&mbi_pdev->dev, "Error P-Unit semaphore request failed\n");
		goto error;
	}

	/* host driver waits for bit 0 to be set in semaphore register */
	start = jiffies;
	end = start + FUNC8(SEMAPHORE_TIMEOUT);
	do {
		ret = FUNC4(&sem);
		if (!ret && sem) {
			iosf_mbi_sem_acquired = jiffies;
			FUNC2(&mbi_pdev->dev, "P-Unit semaphore acquired after %ums\n",
				FUNC7(jiffies - start));
			goto success;
		}

		FUNC13(1000, 2000);
	} while (FUNC12(jiffies, end));

	ret = -ETIMEDOUT;
	FUNC3(&mbi_pdev->dev, "Error P-Unit semaphore timed out, resetting\n");
error:
	FUNC5();
	if (!FUNC4(&sem))
		FUNC3(&mbi_pdev->dev, "P-Unit semaphore: %d\n", sem);
success:
	if (!FUNC0(ret))
		iosf_mbi_pmic_i2c_access_count++;

	FUNC10(&iosf_mbi_pmic_access_mutex);

	return ret;
}