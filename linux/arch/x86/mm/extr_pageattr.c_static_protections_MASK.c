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
typedef  int pgprotval_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 unsigned long PAGE_SIZE ; 
 int _PAGE_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,unsigned long,unsigned long,unsigned long,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned long,unsigned long) ; 
 int FUNC4 (unsigned long,unsigned long) ; 
 int FUNC5 (unsigned long,unsigned long) ; 
 int FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static inline pgprot_t FUNC7(pgprot_t prot, unsigned long start,
					  unsigned long pfn, unsigned long npg,
					  unsigned long lpsize, int warnlvl)
{
	pgprotval_t forbidden, res;
	unsigned long end;

	/*
	 * There is no point in checking RW/NX conflicts when the requested
	 * mapping is setting the page !PRESENT.
	 */
	if (!(FUNC2(prot) & _PAGE_PRESENT))
		return prot;

	/* Operate on the virtual address */
	end = start + npg * PAGE_SIZE - 1;

	res = FUNC3(start, end);
	FUNC1(warnlvl, prot, res, start, end, pfn, "Text NX");
	forbidden = res;

	/*
	 * Special case to preserve a large page. If the change spawns the
	 * full large page mapping then there is no point to split it
	 * up. Happens with ftrace and is going to be removed once ftrace
	 * switched to text_poke().
	 */
	if (lpsize != (npg * PAGE_SIZE) || (start & (lpsize - 1))) {
		res = FUNC4(start, end);
		FUNC1(warnlvl, prot, res, start, end, pfn, "Text RO");
		forbidden |= res;
	}

	/* Check the PFN directly */
	res = FUNC5(pfn, pfn + npg - 1);
	FUNC1(warnlvl, prot, res, start, end, pfn, "PCIBIOS NX");
	forbidden |= res;

	res = FUNC6(pfn, pfn + npg - 1);
	FUNC1(warnlvl, prot, res, start, end, pfn, "Rodata RO");
	forbidden |= res;

	return FUNC0(FUNC2(prot) & ~forbidden);
}