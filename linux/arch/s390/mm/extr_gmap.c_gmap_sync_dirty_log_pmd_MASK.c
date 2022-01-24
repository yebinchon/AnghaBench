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
struct gmap {int /*<<< orphan*/  mm; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int _PAGE_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct gmap*,unsigned long) ; 
 scalar_t__ FUNC3 (struct gmap*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct gmap *gmap, unsigned long bitmap[4],
			     unsigned long gaddr, unsigned long vmaddr)
{
	int i;
	pmd_t *pmdp;
	pte_t *ptep;
	spinlock_t *ptl;

	pmdp = FUNC2(gmap, gaddr);
	if (!pmdp)
		return;

	if (FUNC4(*pmdp)) {
		if (FUNC3(gmap, pmdp, gaddr))
			FUNC0(bitmap, _PAGE_ENTRIES);
	} else {
		for (i = 0; i < _PAGE_ENTRIES; i++, vmaddr += PAGE_SIZE) {
			ptep = FUNC5(gmap->mm, pmdp, vmaddr, &ptl);
			if (!ptep)
				continue;
			if (FUNC6(gmap->mm, vmaddr, ptep))
				FUNC7(i, bitmap);
			FUNC8(ptl);
		}
	}
	FUNC1(gmap, pmdp);
}