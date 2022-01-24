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
struct mm_struct {int dummy; } ;
typedef  int pgd_t ;

/* Variables and functions */
 int FIRST_KERNEL_PGD_NR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NR_PAGETABLE ; 
 int PTRS_PER_PGD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*) ; 

pgd_t *FUNC6(struct mm_struct *mm)
{
	pgd_t *new_pgd, *init_pgd;
	int i;

	new_pgd = (pgd_t *) FUNC0(GFP_KERNEL, 0);
	if (!new_pgd)
		return NULL;
	for (i = 0; i < PTRS_PER_PGD; i++) {
		(*new_pgd) = 1;
		new_pgd++;
	}
	new_pgd -= PTRS_PER_PGD;

	init_pgd = FUNC4(0);

	FUNC3(new_pgd + FIRST_KERNEL_PGD_NR, init_pgd + FIRST_KERNEL_PGD_NR,
	       (PTRS_PER_PGD - FIRST_KERNEL_PGD_NR) * sizeof(pgd_t));

	FUNC1((unsigned long)new_pgd,
			    (unsigned long)new_pgd +
			    PTRS_PER_PGD * sizeof(pgd_t));
	FUNC2(FUNC5((unsigned long *)new_pgd),
			    NR_PAGETABLE);

	return new_pgd;
}