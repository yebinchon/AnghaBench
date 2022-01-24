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

/* Variables and functions */
 int /*<<< orphan*/  iosf_mbi_pmic_access_mutex ; 
 int /*<<< orphan*/  iosf_mbi_pmic_access_waitq ; 
 scalar_t__ iosf_mbi_pmic_punit_access_count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	bool do_wakeup;

	FUNC0(&iosf_mbi_pmic_access_mutex);
	iosf_mbi_pmic_punit_access_count--;
	do_wakeup = iosf_mbi_pmic_punit_access_count == 0;
	FUNC1(&iosf_mbi_pmic_access_mutex);

	if (do_wakeup)
		FUNC2(&iosf_mbi_pmic_access_waitq);
}