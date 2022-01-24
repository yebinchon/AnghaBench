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
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 unsigned int PTRS_PER_PTE ; 
 int /*<<< orphan*/  FUNC0 (struct pg_state*,unsigned long,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pg_state *st, pmd_t *pmd, unsigned long start,
		     const char *domain)
{
	pte_t *pte = FUNC1(pmd, 0);
	unsigned long addr;
	unsigned i;

	for (i = 0; i < PTRS_PER_PTE; i++, pte++) {
		addr = start + i * PAGE_SIZE;
		FUNC0(st, addr, 4, FUNC2(*pte), domain);
	}
}