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
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 unsigned long PGDIR_MASK ; 
 unsigned long PGDIR_SIZE ; 
 unsigned long PMD_MASK ; 
 unsigned long PMD_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static inline int FUNC3(pmd_t *pmd, unsigned long address,
				unsigned long size, unsigned long phys_addr,
				unsigned long flags)
{
	unsigned long end;

	address &= ~PGDIR_MASK;
	end = address + size;
	if (end > PGDIR_SIZE)
		end = PGDIR_SIZE;
	phys_addr -= address;
	if (address >= end)
		FUNC0();
	do {
		pte_t *pte = FUNC1(pmd, address);

		if (!pte)
			return -ENOMEM;
		FUNC2(pte, address, end - address, address + phys_addr,
			flags);
		address = (address + PMD_SIZE) & PMD_MASK;
		pmd++;
	} while (address && (address < end));
	return 0;
}