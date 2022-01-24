#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  flush_count; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 scalar_t__ MACHINE_HAS_TLB_LC ; 
 int _PAGE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static inline pte_t FUNC10(struct mm_struct *mm,
				      unsigned long addr, pte_t *ptep,
				      int nodat)
{
	pte_t old;

	old = *ptep;
	if (FUNC9(FUNC5(old) & _PAGE_INVALID))
		return old;
	FUNC1(&mm->context.flush_count);
	if (MACHINE_HAS_TLB_LC &&
	    FUNC2(FUNC4(mm), FUNC3(FUNC8())))
		FUNC7(mm, addr, ptep, nodat);
	else
		FUNC6(mm, addr, ptep, nodat);
	FUNC0(&mm->context.flush_count);
	return old;
}