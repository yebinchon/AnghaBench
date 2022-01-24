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
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int have_dtlbeir ; 
 int have_itlbeir ; 

void FUNC4(struct vm_area_struct *vma,
			   unsigned long start, unsigned long end)
{
	int addr;
	bool dtlbeir;
	bool itlbeir;

	dtlbeir = have_dtlbeir;
	itlbeir = have_itlbeir;

	for (addr = start; addr < end; addr += PAGE_SIZE) {
		if (dtlbeir)
			FUNC0(addr);
		else
			FUNC1(addr);

		if (itlbeir)
			FUNC2(addr);
		else
			FUNC3(addr);
	}
}