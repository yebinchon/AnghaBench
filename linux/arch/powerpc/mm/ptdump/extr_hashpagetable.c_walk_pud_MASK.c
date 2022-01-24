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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned int PTRS_PER_PUD ; 
 unsigned int PUD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pg_state*,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct pg_state *st, pgd_t *pgd, unsigned long start)
{
	pud_t *pud = FUNC1(pgd, 0);
	unsigned long addr;
	unsigned int i;

	for (i = 0; i < PTRS_PER_PUD; i++, pud++) {
		addr = start + i * PUD_SIZE;
		if (!FUNC0(*pud))
			/* pud exists */
			FUNC2(st, pud, addr);
	}
}