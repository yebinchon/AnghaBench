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
struct gmap {int /*<<< orphan*/  guest_table_lock; TYPE_2__* mm; } ;
typedef  int /*<<< orphan*/  pmd_t ;
struct TYPE_3__ {int /*<<< orphan*/  allow_gmap_hpage_1m; } ;
struct TYPE_4__ {TYPE_1__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gmap*) ; 
 scalar_t__ FUNC2 (struct gmap*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline pmd_t *FUNC7(struct gmap *gmap, unsigned long gaddr)
{
	pmd_t *pmdp;

	FUNC0(FUNC1(gmap));
	pmdp = (pmd_t *) FUNC2(gmap, gaddr, 1);
	if (!pmdp)
		return NULL;

	/* without huge pages, there is no need to take the table lock */
	if (!gmap->mm->context.allow_gmap_hpage_1m)
		return FUNC4(*pmdp) ? NULL : pmdp;

	FUNC5(&gmap->guest_table_lock);
	if (FUNC4(*pmdp)) {
		FUNC6(&gmap->guest_table_lock);
		return NULL;
	}

	/* 4k page table entries are locked via the pte (pte_alloc_map_lock). */
	if (!FUNC3(*pmdp))
		FUNC6(&gmap->guest_table_lock);
	return pmdp;
}