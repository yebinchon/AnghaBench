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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_PGTABLE_USER ; 
 int /*<<< orphan*/  __GFP_ACCOUNT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,int /*<<< orphan*/ **,int) ; 
 struct mm_struct init_mm ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mm_struct *mm, pmd_t *pmds[], int count)
{
	int i;
	bool failed = false;
	gfp_t gfp = GFP_PGTABLE_USER;

	if (mm == &init_mm)
		gfp &= ~__GFP_ACCOUNT;

	for (i = 0; i < count; i++) {
		pmd_t *pmd = (pmd_t *)FUNC0(gfp);
		if (!pmd)
			failed = true;
		if (pmd && !FUNC4(FUNC5(pmd))) {
			FUNC1((unsigned long)pmd);
			pmd = NULL;
			failed = true;
		}
		if (pmd)
			FUNC3(mm);
		pmds[i] = pmd;
	}

	if (failed) {
		FUNC2(mm, pmds, count);
		return -ENOMEM;
	}

	return 0;
}