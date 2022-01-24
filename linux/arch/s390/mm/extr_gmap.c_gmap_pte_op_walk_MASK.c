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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long _SEGMENT_ENTRY_INVALID ; 
 int /*<<< orphan*/  FUNC1 (struct gmap*) ; 
 unsigned long* FUNC2 (struct gmap*,unsigned long,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 

__attribute__((used)) static pte_t *FUNC4(struct gmap *gmap, unsigned long gaddr,
			       spinlock_t **ptl)
{
	unsigned long *table;

	FUNC0(FUNC1(gmap));
	/* Walk the gmap page table, lock and get pte pointer */
	table = FUNC2(gmap, gaddr, 1); /* get segment pointer */
	if (!table || *table & _SEGMENT_ENTRY_INVALID)
		return NULL;
	return FUNC3(gmap->mm, (pmd_t *) table, gaddr, ptl);
}