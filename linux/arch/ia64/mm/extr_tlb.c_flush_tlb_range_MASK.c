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
struct vm_area_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(struct vm_area_struct *vma,
		unsigned long start, unsigned long end)
{
	if (FUNC4(end - start >= 1024*1024*1024*1024UL
			|| FUNC0(start) != FUNC0(end - 1))) {
		/*
		 * If we flush more than a tera-byte or across regions, we're
		 * probably better off just flushing the entire TLB(s).  This
		 * should be very rare and is not worth optimizing for.
		 */
		FUNC2();
	} else {
		/* flush the address range from the tlb */
		FUNC1(vma, start, end);
		/* flush the virt. page-table area mapping the addr range */
		FUNC1(vma, FUNC3(start), FUNC3(end));
	}
}