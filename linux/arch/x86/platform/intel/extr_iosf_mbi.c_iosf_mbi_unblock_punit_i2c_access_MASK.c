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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iosf_mbi_pmic_access_mutex ; 
 int /*<<< orphan*/  iosf_mbi_pmic_access_waitq ; 
 scalar_t__ iosf_mbi_pmic_i2c_access_count ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ iosf_mbi_sem_acquired ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__* mbi_pdev ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
	bool do_wakeup = false;

	FUNC3(&iosf_mbi_pmic_access_mutex);
	iosf_mbi_pmic_i2c_access_count--;
	if (iosf_mbi_pmic_i2c_access_count == 0) {
		FUNC1();
		FUNC0(&mbi_pdev->dev, "punit semaphore held for %ums\n",
			FUNC2(jiffies - iosf_mbi_sem_acquired));
		do_wakeup = true;
	}
	FUNC4(&iosf_mbi_pmic_access_mutex);

	if (do_wakeup)
		FUNC5(&iosf_mbi_pmic_access_waitq);
}