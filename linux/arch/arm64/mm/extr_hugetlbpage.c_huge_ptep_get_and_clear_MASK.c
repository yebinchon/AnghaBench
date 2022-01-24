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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int FUNC0 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 

pte_t FUNC5(struct mm_struct *mm,
			      unsigned long addr, pte_t *ptep)
{
	int ncontig;
	size_t pgsize;
	pte_t orig_pte = FUNC2(ptep);

	if (!FUNC3(orig_pte))
		return FUNC4(mm, addr, ptep);

	ncontig = FUNC0(mm, addr, ptep, &pgsize);

	return FUNC1(mm, addr, ptep, pgsize, ncontig);
}