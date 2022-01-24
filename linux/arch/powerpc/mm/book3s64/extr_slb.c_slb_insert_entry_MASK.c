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
typedef  enum slb_index { ____Placeholder_slb_index } slb_index ;

/* Variables and functions */
 long EFAULT ; 
 unsigned long FUNC0 (unsigned long,int,unsigned long) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long FUNC4 (unsigned long,unsigned long,int) ; 
 unsigned long FUNC5 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

__attribute__((used)) static long FUNC7(unsigned long ea, unsigned long context,
				unsigned long flags, int ssize, bool kernel)
{
	unsigned long vsid;
	unsigned long vsid_data, esid_data;
	enum slb_index index;

	vsid = FUNC4(context, ea, ssize);
	if (!vsid)
		return -EFAULT;

	/*
	 * There must not be a kernel SLB fault in alloc_slb_index or before
	 * slbmte here or the allocation bitmaps could get out of whack with
	 * the SLB.
	 *
	 * User SLB faults or preloads take this path which might get inlined
	 * into the caller, so add compiler barriers here to ensure unsafe
	 * memory accesses do not come between.
	 */
	FUNC3();

	index = FUNC1(kernel);

	vsid_data = FUNC0(vsid, ssize, flags);
	esid_data = FUNC5(ea, ssize, index);

	/*
	 * No need for an isync before or after this slbmte. The exception
	 * we enter with and the rfid we exit with are context synchronizing.
	 * User preloads should add isync afterwards in case the kernel
	 * accesses user memory before it returns to userspace with rfid.
	 */
	FUNC2(false, ea);
	asm volatile("slbmte %0, %1" : : "r" (vsid_data), "r" (esid_data));

	FUNC3();

	if (!kernel)
		FUNC6(esid_data);

	return 0;
}