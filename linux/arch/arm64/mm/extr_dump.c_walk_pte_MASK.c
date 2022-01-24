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
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pg_state*,unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pg_state *st, pmd_t *pmdp, unsigned long start,
		     unsigned long end)
{
	unsigned long addr = start;
	pte_t *ptep = FUNC2(pmdp, start);

	do {
		FUNC1(st, addr, 4, FUNC0(FUNC3(*ptep)));
	} while (ptep++, addr += PAGE_SIZE, addr != end);
}