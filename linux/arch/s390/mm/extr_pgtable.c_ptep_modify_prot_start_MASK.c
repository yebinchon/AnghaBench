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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgste_t ;

/* Variables and functions */
 int _PGSTE_GPS_NODAT ; 
 scalar_t__ FUNC0 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mm_struct*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 

pte_t FUNC7(struct vm_area_struct *vma, unsigned long addr,
			     pte_t *ptep)
{
	pgste_t pgste;
	pte_t old;
	int nodat;
	struct mm_struct *mm = vma->vm_mm;

	FUNC4();
	pgste = FUNC6(mm, addr, ptep);
	nodat = !!(FUNC3(pgste) & _PGSTE_GPS_NODAT);
	old = FUNC5(mm, addr, ptep, nodat);
	if (FUNC0(mm)) {
		pgste = FUNC2(old, pgste, mm);
		FUNC1(ptep, pgste);
	}
	return old;
}