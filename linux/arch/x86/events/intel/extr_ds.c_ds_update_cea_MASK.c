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
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static void FUNC5(void *cea, void *addr, size_t size, pgprot_t prot)
{
	unsigned long start = (unsigned long)cea;
	phys_addr_t pa;
	size_t msz = 0;

	pa = FUNC4(addr);

	FUNC2();
	for (; msz < size; msz += PAGE_SIZE, pa += PAGE_SIZE, cea += PAGE_SIZE)
		FUNC0(cea, pa, prot);

	/*
	 * This is a cross-CPU update of the cpu_entry_area, we must shoot down
	 * all TLB entries for it.
	 */
	FUNC1(start, start + size);
	FUNC3();
}