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
 int /*<<< orphan*/ * FUNC0 (struct mm_struct*,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct mm_struct*) ; 

pte_t *FUNC2(struct mm_struct *mm, int kernel)
{
	pte_t *pte;

	pte = FUNC1(mm);
	if (pte)
		return pte;

	return FUNC0(mm, kernel);
}