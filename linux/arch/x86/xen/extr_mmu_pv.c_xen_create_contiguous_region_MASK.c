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
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  maddr; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int MAX_CONTIG_ORDER ; 
 unsigned int PAGE_SIZE ; 
 unsigned long* discontig_frames ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 
 TYPE_1__ FUNC5 (unsigned long) ; 
 unsigned long FUNC6 (unsigned long) ; 
 int FUNC7 (unsigned long,int /*<<< orphan*/ ,unsigned long*,int,unsigned int,unsigned long*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,unsigned int,unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  xen_reservation_lock ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,unsigned int,unsigned long*,int /*<<< orphan*/ *) ; 

int FUNC10(phys_addr_t pstart, unsigned int order,
				 unsigned int address_bits,
				 dma_addr_t *dma_handle)
{
	unsigned long *in_frames = discontig_frames, out_frame;
	unsigned long  flags;
	int            success;
	unsigned long vstart = (unsigned long)FUNC1(pstart);

	/*
	 * Currently an auto-translated guest will not perform I/O, nor will
	 * it require PAE page directories below 4GB. Therefore any calls to
	 * this function are redundant and can be ignored.
	 */

	if (FUNC4(order > MAX_CONTIG_ORDER))
		return -ENOMEM;

	FUNC0((void *) vstart, 0, PAGE_SIZE << order);

	FUNC2(&xen_reservation_lock, flags);

	/* 1. Zap current PTEs, remembering MFNs. */
	FUNC9(vstart, order, in_frames, NULL);

	/* 2. Get a new contiguous memory extent. */
	out_frame = FUNC6(vstart);
	success = FUNC7(1UL << order, 0, in_frames,
				      1, order, &out_frame,
				      address_bits);

	/* 3. Map the new extent in place of old pages. */
	if (success)
		FUNC8(vstart, order, NULL, out_frame);
	else
		FUNC8(vstart, order, in_frames, 0);

	FUNC3(&xen_reservation_lock, flags);

	*dma_handle = FUNC5(vstart).maddr;
	return success ? 0 : -ENOMEM;
}