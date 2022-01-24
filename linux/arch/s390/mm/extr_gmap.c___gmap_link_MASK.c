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
typedef  unsigned long u64 ;
struct TYPE_2__ {int /*<<< orphan*/  allow_gmap_hpage_1m; } ;
struct mm_struct {TYPE_1__ context; } ;
struct gmap {unsigned long* table; int asce; int /*<<< orphan*/  guest_table_lock; int /*<<< orphan*/  host_to_guest; struct mm_struct* mm; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long PMD_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int _ASCE_TYPE_MASK ; 
 int _ASCE_TYPE_REGION1 ; 
 int _ASCE_TYPE_REGION2 ; 
 int _ASCE_TYPE_REGION3 ; 
 unsigned long _REGION1_INDEX ; 
 unsigned long _REGION1_MASK ; 
 unsigned long _REGION1_SHIFT ; 
 unsigned long _REGION2_ENTRY_EMPTY ; 
 unsigned long _REGION2_INDEX ; 
 unsigned long _REGION2_MASK ; 
 unsigned long _REGION2_SHIFT ; 
 unsigned long _REGION3_ENTRY_EMPTY ; 
 unsigned long _REGION3_INDEX ; 
 unsigned long _REGION3_MASK ; 
 unsigned long _REGION3_SHIFT ; 
 unsigned long _REGION_ENTRY_INVALID ; 
 unsigned long _REGION_ENTRY_ORIGIN ; 
 unsigned long _SEGMENT_ENTRY_EMPTY ; 
 unsigned long _SEGMENT_ENTRY_GMAP_UC ; 
 unsigned long _SEGMENT_ENTRY_HARDWARE_BITS ; 
 unsigned long _SEGMENT_ENTRY_HARDWARE_BITS_LARGE ; 
 unsigned long _SEGMENT_ENTRY_PROTECT ; 
 unsigned long _SEGMENT_INDEX ; 
 unsigned long _SEGMENT_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (struct gmap*,unsigned long*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct gmap*) ; 
 int /*<<< orphan*/  FUNC5 (struct gmap*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC18 (int /*<<< orphan*/ *,unsigned long,unsigned long*) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

int FUNC23(struct gmap *gmap, unsigned long gaddr, unsigned long vmaddr)
{
	struct mm_struct *mm;
	unsigned long *table;
	spinlock_t *ptl;
	pgd_t *pgd;
	p4d_t *p4d;
	pud_t *pud;
	pmd_t *pmd;
	u64 unprot;
	int rc;

	FUNC0(FUNC4(gmap));
	/* Create higher level tables in the gmap page table */
	table = gmap->table;
	if ((gmap->asce & _ASCE_TYPE_MASK) >= _ASCE_TYPE_REGION1) {
		table += (gaddr & _REGION1_INDEX) >> _REGION1_SHIFT;
		if ((*table & _REGION_ENTRY_INVALID) &&
		    FUNC3(gmap, table, _REGION2_ENTRY_EMPTY,
				     gaddr & _REGION1_MASK))
			return -ENOMEM;
		table = (unsigned long *)(*table & _REGION_ENTRY_ORIGIN);
	}
	if ((gmap->asce & _ASCE_TYPE_MASK) >= _ASCE_TYPE_REGION2) {
		table += (gaddr & _REGION2_INDEX) >> _REGION2_SHIFT;
		if ((*table & _REGION_ENTRY_INVALID) &&
		    FUNC3(gmap, table, _REGION3_ENTRY_EMPTY,
				     gaddr & _REGION2_MASK))
			return -ENOMEM;
		table = (unsigned long *)(*table & _REGION_ENTRY_ORIGIN);
	}
	if ((gmap->asce & _ASCE_TYPE_MASK) >= _ASCE_TYPE_REGION3) {
		table += (gaddr & _REGION3_INDEX) >> _REGION3_SHIFT;
		if ((*table & _REGION_ENTRY_INVALID) &&
		    FUNC3(gmap, table, _SEGMENT_ENTRY_EMPTY,
				     gaddr & _REGION3_MASK))
			return -ENOMEM;
		table = (unsigned long *)(*table & _REGION_ENTRY_ORIGIN);
	}
	table += (gaddr & _SEGMENT_INDEX) >> _SEGMENT_SHIFT;
	/* Walk the parent mm page table */
	mm = gmap->mm;
	pgd = FUNC9(mm, vmaddr);
	FUNC1(FUNC8(*pgd));
	p4d = FUNC7(pgd, vmaddr);
	FUNC1(FUNC6(*p4d));
	pud = FUNC17(p4d, vmaddr);
	FUNC1(FUNC16(*pud));
	/* large puds cannot yet be handled */
	if (FUNC15(*pud))
		return -EFAULT;
	pmd = FUNC13(pud, vmaddr);
	FUNC1(FUNC12(*pmd));
	/* Are we allowed to use huge pages? */
	if (FUNC10(*pmd) && !gmap->mm->context.allow_gmap_hpage_1m)
		return -EFAULT;
	/* Link gmap segment table entry location to page table. */
	rc = FUNC19(GFP_KERNEL);
	if (rc)
		return rc;
	ptl = FUNC11(mm, pmd);
	FUNC21(&gmap->guest_table_lock);
	if (*table == _SEGMENT_ENTRY_EMPTY) {
		rc = FUNC18(&gmap->host_to_guest,
				       vmaddr >> PMD_SHIFT, table);
		if (!rc) {
			if (FUNC10(*pmd)) {
				*table = (FUNC14(*pmd) &
					  _SEGMENT_ENTRY_HARDWARE_BITS_LARGE)
					| _SEGMENT_ENTRY_GMAP_UC;
			} else
				*table = FUNC14(*pmd) &
					_SEGMENT_ENTRY_HARDWARE_BITS;
		}
	} else if (*table & _SEGMENT_ENTRY_PROTECT &&
		   !(FUNC14(*pmd) & _SEGMENT_ENTRY_PROTECT)) {
		unprot = (u64)*table;
		unprot &= ~_SEGMENT_ENTRY_PROTECT;
		unprot |= _SEGMENT_ENTRY_GMAP_UC;
		FUNC5(gmap, (pmd_t *)table, FUNC2(unprot), gaddr);
	}
	FUNC22(&gmap->guest_table_lock);
	FUNC22(ptl);
	FUNC20();
	return rc;
}