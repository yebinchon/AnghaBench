#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int mtrr_type ;
struct TYPE_4__ {unsigned long x86_phys_bits; } ;
struct TYPE_3__ {int (* validate_add_page ) (unsigned long,unsigned long,unsigned int) ;int (* get_free_region ) (unsigned long,unsigned long,int) ;int /*<<< orphan*/  (* get ) (int,unsigned long*,unsigned long*,unsigned int*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 int ENXIO ; 
 unsigned int MTRR_NUM_TYPES ; 
 unsigned int MTRR_TYPE_WRCOMB ; 
 unsigned long PAGE_SHIFT ; 
 TYPE_2__ boot_cpu_data ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 unsigned long FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* mtrr_if ; 
 int /*<<< orphan*/  mtrr_mutex ; 
 int* mtrr_usage_table ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int num_var_ranges ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,unsigned long,unsigned long,unsigned int) ; 
 int FUNC11 (unsigned long,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int,unsigned long*,unsigned long*,unsigned int*) ; 
 int FUNC13 (unsigned long,unsigned long,int) ; 
 scalar_t__ FUNC14 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC15 (int) ; 

int FUNC16(unsigned long base, unsigned long size,
		  unsigned int type, bool increment)
{
	unsigned long lbase, lsize;
	int i, replace, error;
	mtrr_type ltype;

	if (!FUNC4())
		return -ENXIO;

	error = mtrr_if->validate_add_page(base, size, type);
	if (error)
		return error;

	if (type >= MTRR_NUM_TYPES) {
		FUNC8("type: %u invalid\n", type);
		return -EINVAL;
	}

	/* If the type is WC, check that this processor supports it */
	if ((type == MTRR_TYPE_WRCOMB) && !FUNC1()) {
		FUNC8("your processor doesn't support write-combining\n");
		return -ENOSYS;
	}

	if (!size) {
		FUNC8("zero sized request\n");
		return -EINVAL;
	}

	if ((base | (base + size - 1)) >>
	    (boot_cpu_data.x86_phys_bits - PAGE_SHIFT)) {
		FUNC8("base or size exceeds the MTRR width\n");
		return -EINVAL;
	}

	error = -EINVAL;
	replace = -1;

	/* No CPU hotplug when we change MTRR entries */
	FUNC0();

	/* Search for existing MTRR  */
	FUNC5(&mtrr_mutex);
	for (i = 0; i < num_var_ranges; ++i) {
		mtrr_if->get(i, &lbase, &lsize, &ltype);
		if (!lsize || base > lbase + lsize - 1 ||
		    base + size - 1 < lbase)
			continue;
		/*
		 * At this point we know there is some kind of
		 * overlap/enclosure
		 */
		if (base < lbase || base + size - 1 > lbase + lsize - 1) {
			if (base <= lbase &&
			    base + size - 1 >= lbase + lsize - 1) {
				/*  New region encloses an existing region  */
				if (type == ltype) {
					replace = replace == -1 ? i : -2;
					continue;
				} else if (FUNC14(type, ltype))
					continue;
			}
			FUNC8("0x%lx000,0x%lx000 overlaps existing 0x%lx000,0x%lx000\n", base, size, lbase,
				lsize);
			goto out;
		}
		/* New region is enclosed by an existing region */
		if (ltype != type) {
			if (FUNC14(type, ltype))
				continue;
			FUNC8("type mismatch for %lx000,%lx000 old: %s new: %s\n",
				base, size, FUNC3(ltype),
				FUNC3(type));
			goto out;
		}
		if (increment)
			++mtrr_usage_table[i];
		error = i;
		goto out;
	}
	/* Search for an empty MTRR */
	i = mtrr_if->get_free_region(base, size, replace);
	if (i >= 0) {
		FUNC10(i, base, size, type);
		if (FUNC2(replace < 0)) {
			mtrr_usage_table[i] = 1;
		} else {
			mtrr_usage_table[i] = mtrr_usage_table[replace];
			if (increment)
				mtrr_usage_table[i]++;
			if (FUNC15(replace != i)) {
				FUNC10(replace, 0, 0, 0);
				mtrr_usage_table[replace] = 0;
			}
		}
	} else {
		FUNC7("no more MTRRs available\n");
	}
	error = i;
 out:
	FUNC6(&mtrr_mutex);
	FUNC9();
	return error;
}