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
struct iommu_table {int it_indirect_levels; int it_level_size; int /*<<< orphan*/  it_nid; scalar_t__ it_base; int /*<<< orphan*/ * it_userspace; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long TCE_PCI_READ ; 
 unsigned long TCE_PCI_WRITE ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static __be64 *FUNC9(struct iommu_table *tbl, bool user, long idx, bool alloc)
{
	__be64 *tmp = user ? tbl->it_userspace : (__be64 *) tbl->it_base;
	int  level = tbl->it_indirect_levels;
	const long shift = FUNC6(tbl->it_level_size);
	unsigned long mask = (tbl->it_level_size - 1) << (level * shift);

	while (level) {
		int n = (idx & mask) >> (level * shift);
		unsigned long oldtce, tce = FUNC3(FUNC0(tmp[n]));

		if (!tce) {
			__be64 *tmp2;

			if (!alloc)
				return NULL;

			tmp2 = FUNC7(tbl->it_nid,
					FUNC6(tbl->it_level_size) + 3);
			if (!tmp2)
				return NULL;

			tce = FUNC1(tmp2) | TCE_PCI_READ | TCE_PCI_WRITE;
			oldtce = FUNC3(FUNC4(&tmp[n], 0,
					FUNC5(tce)));
			if (oldtce) {
				FUNC8(tmp2,
					FUNC6(tbl->it_level_size) + 3, 1);
				tce = oldtce;
			}
		}

		tmp = FUNC2(tce & ~(TCE_PCI_READ | TCE_PCI_WRITE));
		idx &= ~mask;
		mask >>= shift;
		--level;
	}

	return tmp + idx;
}