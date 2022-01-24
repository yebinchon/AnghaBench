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
typedef  int /*<<< orphan*/  mtrr_type ;
struct TYPE_2__ {int /*<<< orphan*/  (* get ) (int,unsigned long*,unsigned long*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* mtrr_if ; 
 int /*<<< orphan*/  mtrr_mutex ; 
 int* mtrr_usage_table ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int num_var_ranges ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned long*,unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,unsigned long*,unsigned long*,int /*<<< orphan*/ *) ; 

int FUNC10(int reg, unsigned long base, unsigned long size)
{
	int i, max;
	mtrr_type ltype;
	unsigned long lbase, lsize;
	int error = -EINVAL;

	if (!FUNC1())
		return -ENODEV;

	max = num_var_ranges;
	/* No CPU hotplug when we change MTRR entries */
	FUNC0();
	FUNC2(&mtrr_mutex);
	if (reg < 0) {
		/*  Search for existing MTRR  */
		for (i = 0; i < max; ++i) {
			mtrr_if->get(i, &lbase, &lsize, &ltype);
			if (lbase == base && lsize == size) {
				reg = i;
				break;
			}
		}
		if (reg < 0) {
			FUNC4("no MTRR for %lx000,%lx000 found\n",
				 base, size);
			goto out;
		}
	}
	if (reg >= max) {
		FUNC5("register: %d too big\n", reg);
		goto out;
	}
	mtrr_if->get(reg, &lbase, &lsize, &ltype);
	if (lsize < 1) {
		FUNC5("MTRR %d not used\n", reg);
		goto out;
	}
	if (mtrr_usage_table[reg] < 1) {
		FUNC5("reg: %d has count=0\n", reg);
		goto out;
	}
	if (--mtrr_usage_table[reg] < 1)
		FUNC7(reg, 0, 0, 0);
	error = reg;
 out:
	FUNC3(&mtrr_mutex);
	FUNC6();
	return error;
}