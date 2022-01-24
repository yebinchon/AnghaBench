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
typedef  scalar_t__ phys_addr_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (unsigned long,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC2(unsigned long ea, phys_addr_t pa,
			unsigned long size, pgprot_t prot)
{
	unsigned long i;

	for (i = 0; i < size; i += PAGE_SIZE) {
		int err = FUNC1(ea + i, pa + i, prot);

		if (FUNC0(err))  /* Should clean up */
			return err;
	}

	return 0;
}