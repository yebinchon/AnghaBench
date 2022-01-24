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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 

pud_t FUNC3(struct mm_struct *mm, unsigned long addr,
		       pud_t *pudp, pud_t new)
{
	pud_t old;

	FUNC0();
	old = FUNC2(mm, addr, pudp);
	*pudp = new;
	FUNC1();
	return old;
}