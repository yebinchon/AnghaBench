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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pg_state*,unsigned long,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pg_state*,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct pg_state *st, pud_t *pudp, unsigned long start,
		     unsigned long end)
{
	unsigned long next, addr = start;
	pmd_t *pmdp = FUNC6(pudp, start);

	do {
		pmd_t pmd = FUNC1(*pmdp);
		next = FUNC3(addr, end);

		if (FUNC5(pmd) || FUNC7(pmd)) {
			FUNC2(st, addr, 3, FUNC8(pmd));
		} else {
			FUNC0(FUNC4(pmd));
			FUNC9(st, pmdp, addr, next);
		}
	} while (pmdp++, addr = next, addr != end);
}