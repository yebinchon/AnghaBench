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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned long PMD_MASK ; 
 scalar_t__ SECTION_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(pud_t *pud, unsigned long addr, unsigned long end,
	unsigned long prot)
{
	pmd_t *pmd = FUNC2(pud, addr);

	addr = (addr & PMD_MASK) | prot;
	pmd[0] = FUNC0(addr);
	addr += SECTION_SIZE;
	pmd[1] = FUNC0(addr);
	FUNC1(pmd);
}