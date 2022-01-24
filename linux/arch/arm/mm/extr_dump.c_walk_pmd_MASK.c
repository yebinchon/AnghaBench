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
struct pg_state {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned int PMD_SIZE ; 
 unsigned int PTRS_PER_PMD ; 
 unsigned int SECTION_SIZE ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pg_state*,unsigned long,int,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pg_state*,int /*<<< orphan*/ *,unsigned long,char const*) ; 

__attribute__((used)) static void FUNC8(struct pg_state *st, pud_t *pud, unsigned long start)
{
	pmd_t *pmd = FUNC4(pud, 0);
	unsigned long addr;
	unsigned i;
	const char *domain;

	for (i = 0; i < PTRS_PER_PMD; i++, pmd++) {
		addr = start + i * PMD_SIZE;
		domain = FUNC0(pmd);
		if (FUNC3(*pmd) || FUNC2(*pmd) || !FUNC5(*pmd))
			FUNC1(st, addr, 3, FUNC6(*pmd), domain);
		else
			FUNC7(st, pmd, addr, domain);

		if (SECTION_SIZE < PMD_SIZE && FUNC2(pmd[1])) {
			addr += SECTION_SIZE;
			pmd++;
			domain = FUNC0(pmd);
			FUNC1(st, addr, 3, FUNC6(*pmd), domain);
		}
	}
}