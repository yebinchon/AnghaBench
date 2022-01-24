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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int PMD_SECT_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_mm ; 
 unsigned long FUNC4 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(pud_t *dst_pudp, pud_t *src_pudp, unsigned long start,
		    unsigned long end)
{
	pmd_t *src_pmdp;
	pmd_t *dst_pmdp;
	unsigned long next;
	unsigned long addr = start;

	if (FUNC9(FUNC0(*dst_pudp))) {
		dst_pmdp = (pmd_t *)FUNC3(GFP_ATOMIC);
		if (!dst_pmdp)
			return -ENOMEM;
		FUNC10(&init_mm, dst_pudp, dst_pmdp);
	}
	dst_pmdp = FUNC6(dst_pudp, start);

	src_pmdp = FUNC6(src_pudp, start);
	do {
		pmd_t pmd = FUNC0(*src_pmdp);

		next = FUNC4(addr, end);
		if (FUNC5(pmd))
			continue;
		if (FUNC7(pmd)) {
			if (FUNC2(dst_pmdp, src_pmdp, addr, next))
				return -ENOMEM;
		} else {
			FUNC11(dst_pmdp,
				FUNC1(FUNC8(pmd) & ~PMD_SECT_RDONLY));
		}
	} while (dst_pmdp++, src_pmdp++, addr = next, addr != end);

	return 0;
}