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
 int /*<<< orphan*/  MMUEXT_PIN_L3_TABLE ; 
 int /*<<< orphan*/  MMUEXT_PIN_L4_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_PGD ; 
 int /*<<< orphan*/  PT_PMD ; 
 int /*<<< orphan*/  TASK_SIZE ; 
 int /*<<< orphan*/  USER_LIMIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct mm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct mm_struct *mm, pgd_t *pgd)
{
	FUNC6(mm, pgd);

	FUNC10();

	if (FUNC2(mm, pgd, xen_pin_page, USER_LIMIT)) {
		/* re-enable interrupts for flushing */
		FUNC11(0);

		FUNC3();

		FUNC10();
	}

#ifdef CONFIG_X86_64
	{
		pgd_t *user_pgd = xen_get_user_pgd(pgd);

		xen_do_pin(MMUEXT_PIN_L4_TABLE, PFN_DOWN(__pa(pgd)));

		if (user_pgd) {
			xen_pin_page(mm, virt_to_page(user_pgd), PT_PGD);
			xen_do_pin(MMUEXT_PIN_L4_TABLE,
				   PFN_DOWN(__pa(user_pgd)));
		}
	}
#else /* CONFIG_X86_32 */
#ifdef CONFIG_X86_PAE
	/* Need to make sure unshared kernel PMD is pinnable */
	xen_pin_page(mm, pgd_page(pgd[pgd_index(TASK_SIZE)]),
		     PT_PMD);
#endif
	FUNC8(MMUEXT_PIN_L3_TABLE, FUNC0(FUNC1(pgd)));
#endif /* CONFIG_X86_64 */
	FUNC11(0);
}