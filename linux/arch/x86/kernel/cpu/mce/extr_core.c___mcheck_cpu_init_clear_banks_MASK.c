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
struct mce_bank {int /*<<< orphan*/  ctl; int /*<<< orphan*/  init; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* status ) (int) ;int /*<<< orphan*/  (* ctl ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  mce_banks_array ; 
 int /*<<< orphan*/  mce_num_banks ; 
 TYPE_1__ msr_ops ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mce_bank* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct mce_bank *mce_banks = FUNC2(mce_banks_array);
	int i;

	for (i = 0; i < FUNC3(mce_num_banks); i++) {
		struct mce_bank *b = &mce_banks[i];

		if (!b->init)
			continue;
		FUNC4(msr_ops.ctl(i), b->ctl);
		FUNC4(msr_ops.status(i), 0);
	}
}