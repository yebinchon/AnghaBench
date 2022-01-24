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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  _REGION3_ENTRY_EMPTY ; 
 int _REGION_ENTRY_TYPE_MASK ; 
 int _REGION_ENTRY_TYPE_R3 ; 
 int /*<<< orphan*/  _SEGMENT_ENTRY_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

pte_t FUNC6(struct mm_struct *mm,
			      unsigned long addr, pte_t *ptep)
{
	pte_t pte = FUNC2(ptep);
	pmd_t *pmdp = (pmd_t *) ptep;
	pud_t *pudp = (pud_t *) ptep;

	if ((FUNC4(*ptep) & _REGION_ENTRY_TYPE_MASK) == _REGION_ENTRY_TYPE_R3)
		FUNC5(mm, addr, pudp, FUNC1(_REGION3_ENTRY_EMPTY));
	else
		FUNC3(mm, addr, pmdp, FUNC0(_SEGMENT_ENTRY_EMPTY));
	return pte;
}