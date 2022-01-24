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
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long PTRS_PER_PGD ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(struct kvm *kvm, pgd_t *pgd, unsigned int lpid)
{
	unsigned long ig;

	for (ig = 0; ig < PTRS_PER_PGD; ++ig, ++pgd) {
		pud_t *pud;

		if (!FUNC2(*pgd))
			continue;
		pud = FUNC3(pgd, 0);
		FUNC0(kvm, pud, lpid);
		FUNC1(pgd);
	}
}