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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ hypervisor ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ tlb_type ; 

__attribute__((used)) static unsigned int FUNC4(pte_t entry)
{
	unsigned long shift;

	if (tlb_type == hypervisor)
		shift = FUNC3(entry);
	else
		shift = FUNC2(entry);

	if (shift == PAGE_SHIFT)
		FUNC0(1, "tto_to_shift: invalid hugepage tte=0x%lx\n",
			  FUNC1(entry));

	return shift;
}