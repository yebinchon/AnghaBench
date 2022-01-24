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
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 unsigned int MAX_CONTIG_ORDER ; 
 unsigned int PAGE_SIZE ; 
 unsigned long* discontig_frames ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 
 unsigned long FUNC5 (unsigned long) ; 
 int FUNC6 (int,unsigned int,unsigned long*,unsigned long,int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,unsigned int,unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  xen_reservation_lock ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,unsigned int,int /*<<< orphan*/ *,unsigned long*) ; 

void FUNC9(phys_addr_t pstart, unsigned int order)
{
	unsigned long *out_frames = discontig_frames, in_frame;
	unsigned long  flags;
	int success;
	unsigned long vstart;

	if (FUNC4(order > MAX_CONTIG_ORDER))
		return;

	vstart = (unsigned long)FUNC1(pstart);
	FUNC0((void *) vstart, 0, PAGE_SIZE << order);

	FUNC2(&xen_reservation_lock, flags);

	/* 1. Find start MFN of contiguous extent. */
	in_frame = FUNC5(vstart);

	/* 2. Zap current PTEs. */
	FUNC8(vstart, order, NULL, out_frames);

	/* 3. Do the exchange for non-contiguous MFNs. */
	success = FUNC6(1, order, &in_frame, 1UL << order,
					0, out_frames, 0);

	/* 4. Map new pages in place of old pages. */
	if (success)
		FUNC7(vstart, order, out_frames, 0);
	else
		FUNC7(vstart, order, NULL, in_frame);

	FUNC3(&xen_reservation_lock, flags);
}