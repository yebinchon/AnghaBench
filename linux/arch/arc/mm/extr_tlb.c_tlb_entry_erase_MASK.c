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

/* Variables and functions */
 unsigned int TLB_DUP_ERR ; 
 unsigned int TLB_LKUP_ERR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 unsigned int FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(unsigned int vaddr_n_asid)
{
	unsigned int idx;

	/* Locate the TLB entry for this vaddr + ASID */
	idx = FUNC3(vaddr_n_asid);

	/* No error means entry found, zero it out */
	if (FUNC2(!(idx & TLB_LKUP_ERR))) {
		FUNC1();
	} else {
		/* Duplicate entry error */
		FUNC0(idx == TLB_DUP_ERR, "Probe returned Dup PD for %x\n",
					   vaddr_n_asid);
	}
}