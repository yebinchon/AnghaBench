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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 scalar_t__ CPU_ARCH_ARMv5TEJ ; 
 unsigned long PMD_BIT4 ; 
 unsigned long PMD_SECT_AF ; 
 unsigned long PMD_SECT_AP_WRITE ; 
 unsigned long PMD_TYPE_SECT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long,unsigned long) ; 
 unsigned long FUNC6 (char const*) ; 

__attribute__((used)) static void FUNC7(pgd_t *pgd, const char *text_start,
				 const char *text_end, unsigned long prot)
{
	unsigned long addr, end;
	unsigned long next;

	addr = FUNC6(text_start);
	end = FUNC6(text_end);
	FUNC5("Setting up static identity map for 0x%lx - 0x%lx\n", addr, end);

	prot |= PMD_TYPE_SECT | PMD_SECT_AP_WRITE | PMD_SECT_AF;

	if (FUNC0() <= CPU_ARCH_ARMv5TEJ && !FUNC1())
		prot |= PMD_BIT4;

	pgd += FUNC4(addr);
	do {
		next = FUNC3(addr, end);
		FUNC2(pgd, addr, next, prot);
	} while (pgd++, addr = next, addr != end);
}