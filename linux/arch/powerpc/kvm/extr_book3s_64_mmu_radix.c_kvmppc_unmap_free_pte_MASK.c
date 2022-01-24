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

/* Variables and functions */
 int PAGE_SHIFT ; 
 int PTE_INDEX_SIZE ; 
 unsigned long PTRS_PER_PTE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct kvm *kvm, pte_t *pte, bool full,
				  unsigned int lpid)
{
	if (full) {
		FUNC3(pte, 0, sizeof(long) << PTE_INDEX_SIZE);
	} else {
		pte_t *p = pte;
		unsigned long it;

		for (it = 0; it < PTRS_PER_PTE; ++it, ++p) {
			if (FUNC5(*p) == 0)
				continue;
			FUNC0(1);
			FUNC2(kvm, p,
					 FUNC4(*p) << PAGE_SHIFT,
					 PAGE_SHIFT, NULL, lpid);
		}
	}

	FUNC1(pte);
}