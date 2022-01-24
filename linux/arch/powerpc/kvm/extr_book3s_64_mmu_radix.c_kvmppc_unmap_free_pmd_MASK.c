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
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PMD_SHIFT ; 
 unsigned long PTRS_PER_PMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct kvm *kvm, pmd_t *pmd, bool full,
				  unsigned int lpid)
{
	unsigned long im;
	pmd_t *p = pmd;

	for (im = 0; im < PTRS_PER_PMD; ++im, ++p) {
		if (!FUNC6(*p))
			continue;
		if (FUNC5(*p)) {
			if (full) {
				FUNC4(p);
			} else {
				FUNC0(1);
				FUNC3(kvm, (pte_t *)p,
					 FUNC8(*(pte_t *)p) << PAGE_SHIFT,
					 PMD_SHIFT, NULL, lpid);
			}
		} else {
			pte_t *pte;

			pte = FUNC7(p, 0);
			FUNC2(kvm, pte, full, lpid);
			FUNC4(p);
		}
	}
	FUNC1(pmd);
}