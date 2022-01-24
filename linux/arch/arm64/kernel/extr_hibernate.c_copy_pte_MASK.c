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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(pmd_t *dst_pmdp, pmd_t *src_pmdp, unsigned long start,
		    unsigned long end)
{
	pte_t *src_ptep;
	pte_t *dst_ptep;
	unsigned long addr = start;

	dst_ptep = (pte_t *)FUNC1(GFP_ATOMIC);
	if (!dst_ptep)
		return -ENOMEM;
	FUNC2(&init_mm, dst_pmdp, dst_ptep);
	dst_ptep = FUNC3(dst_pmdp, start);

	src_ptep = FUNC3(src_pmdp, start);
	do {
		FUNC0(dst_ptep, src_ptep, addr);
	} while (dst_ptep++, src_ptep++, addr += PAGE_SIZE, addr != end);

	return 0;
}