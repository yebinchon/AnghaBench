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
typedef  int /*<<< orphan*/  u64 ;
struct mce_bank {int init; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ctl ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  mce_banks_array ; 
 int /*<<< orphan*/  mce_num_banks ; 
 TYPE_1__ msr_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mce_bank* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	struct mce_bank *mce_banks = FUNC2(mce_banks_array);
	u64 msrval;
	int i;

	for (i = 0; i < FUNC3(mce_num_banks); i++) {
		struct mce_bank *b = &mce_banks[i];

		if (!b->init)
			continue;

		FUNC0(msr_ops.ctl(i), msrval);
		b->init = !!msrval;
	}
}