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
typedef  int /*<<< orphan*/  iopte_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ viking_flush ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ viking_mxcc_present ; 

__attribute__((used)) static void FUNC4(iopte_t *iopte, unsigned int niopte)
{
	unsigned long start;
	unsigned long end;

	start = (unsigned long)iopte;
	end = FUNC0(start + niopte*sizeof(iopte_t));
	start &= PAGE_MASK;
	if (viking_mxcc_present) {
		while(start < end) {
			FUNC3(start);
			start += PAGE_SIZE;
		}
	} else if (viking_flush) {
		while(start < end) {
			FUNC2(start);
			start += PAGE_SIZE;
		}
	} else {
		while(start < end) {
			FUNC1(start);
			start += PAGE_SIZE;
		}
	}
}