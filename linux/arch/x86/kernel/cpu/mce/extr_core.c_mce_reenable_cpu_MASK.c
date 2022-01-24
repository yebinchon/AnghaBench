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
struct mce_bank {int /*<<< orphan*/  ctl; scalar_t__ init; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ctl ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  cpu_info ; 
 int /*<<< orphan*/  cpuhp_tasks_frozen ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mce_banks_array ; 
 int /*<<< orphan*/  mce_num_banks ; 
 TYPE_1__ msr_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct mce_bank* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
	struct mce_bank *mce_banks = FUNC4(mce_banks_array);
	int i;

	if (!FUNC1(FUNC2(&cpu_info)))
		return;

	if (!cpuhp_tasks_frozen)
		FUNC0();
	for (i = 0; i < FUNC5(mce_num_banks); i++) {
		struct mce_bank *b = &mce_banks[i];

		if (b->init)
			FUNC6(msr_ops.ctl(i), b->ctl);
	}
}