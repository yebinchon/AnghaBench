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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int KERNEL_PGD_BOUNDARY ; 
 int PREALLOCATED_PMDS ; 
 int PREALLOCATED_USER_PMDS ; 
 int /*<<< orphan*/  X86_FEATURE_PTI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mm_struct *mm, pgd_t *pgdp)
{
	int i;

	for (i = 0; i < PREALLOCATED_PMDS; i++)
		FUNC2(mm, &pgdp[i]);

#ifdef CONFIG_PAGE_TABLE_ISOLATION

	if (!boot_cpu_has(X86_FEATURE_PTI))
		return;

	pgdp = kernel_to_user_pgdp(pgdp);

	for (i = 0; i < PREALLOCATED_USER_PMDS; i++)
		mop_up_one_pmd(mm, &pgdp[i + KERNEL_PGD_BOUNDARY]);
#endif
}