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
struct x86_mapping_info {unsigned long offset; unsigned long page_flag; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned long PMD_MASK ; 
 scalar_t__ PMD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct x86_mapping_info *info, pmd_t *pmd_page,
			   unsigned long addr, unsigned long end)
{
	addr &= PMD_MASK;
	for (; addr < end; addr += PMD_SIZE) {
		pmd_t *pmd = pmd_page + FUNC1(addr);

		if (FUNC2(*pmd))
			continue;

		FUNC3(pmd, FUNC0((addr - info->offset) | info->page_flag));
	}
}