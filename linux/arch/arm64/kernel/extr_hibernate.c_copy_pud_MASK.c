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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int PMD_SECT_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_mm ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long start,
		    unsigned long end)
{
	pud_t *dst_pudp;
	pud_t *src_pudp;
	unsigned long next;
	unsigned long addr = start;

	if (FUNC4(FUNC0(*dst_pgdp))) {
		dst_pudp = (pud_t *)FUNC3(GFP_ATOMIC);
		if (!dst_pudp)
			return -ENOMEM;
		FUNC5(&init_mm, dst_pgdp, dst_pudp);
	}
	dst_pudp = FUNC8(dst_pgdp, start);

	src_pudp = FUNC8(src_pgdp, start);
	do {
		pud_t pud = FUNC0(*src_pudp);

		next = FUNC6(addr, end);
		if (FUNC7(pud))
			continue;
		if (FUNC9(pud)) {
			if (FUNC2(dst_pudp, src_pudp, addr, next))
				return -ENOMEM;
		} else {
			FUNC11(dst_pudp,
				FUNC1(FUNC10(pud) & ~PMD_SECT_RDONLY));
		}
	} while (dst_pudp++, src_pudp++, addr = next, addr != end);

	return 0;
}