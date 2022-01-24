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
struct iounit_struct {unsigned long* rotor; unsigned long* limit; int /*<<< orphan*/ * page_table; int /*<<< orphan*/  bmap; } ;
typedef  int /*<<< orphan*/  iopte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned long IOUNIT_DMA_BASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC10(struct iounit_struct *iounit, unsigned long vaddr, int size)
{
	int i, j, k, npages;
	unsigned long rotor, scan, limit;
	iopte_t iopte;

        npages = ((vaddr & ~PAGE_MASK) + size + (PAGE_SIZE-1)) >> PAGE_SHIFT;

	/* A tiny bit of magic ingredience :) */
	switch (npages) {
	case 1: i = 0x0231; break;
	case 2: i = 0x0132; break;
	default: i = 0x0213; break;
	}
	
	FUNC0(("iounit_get_area(%08lx,%d[%d])=", vaddr, size, npages));
	
next:	j = (i & 15);
	rotor = iounit->rotor[j - 1];
	limit = iounit->limit[j];
	scan = rotor;
nexti:	scan = FUNC4(iounit->bmap, limit, scan);
	if (scan + npages > limit) {
		if (limit != rotor) {
			limit = rotor;
			scan = iounit->limit[j - 1];
			goto nexti;
		}
		i >>= 4;
		if (!(i & 15))
			FUNC6("iounit_get_area: Couldn't find free iopte slots for (%08lx,%d)\n", vaddr, size);
		goto next;
	}
	for (k = 1, scan++; k < npages; k++)
		if (FUNC9(scan++, iounit->bmap))
			goto nexti;
	iounit->rotor[j - 1] = (scan < limit) ? scan : iounit->limit[j - 1];
	scan -= npages;
	iopte = FUNC1(FUNC3(vaddr & PAGE_MASK));
	vaddr = IOUNIT_DMA_BASE + (scan << PAGE_SHIFT) + (vaddr & ~PAGE_MASK);
	for (k = 0; k < npages; k++, iopte = FUNC2(FUNC5(iopte) + 0x100), scan++) {
		FUNC8(scan, iounit->bmap);
		FUNC7(FUNC5(iopte), &iounit->page_table[scan]);
	}
	FUNC0(("%08lx\n", vaddr));
	return vaddr;
}