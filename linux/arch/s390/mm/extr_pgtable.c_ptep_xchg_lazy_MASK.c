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
typedef  int /*<<< orphan*/  pgste_t ;

/* Variables and functions */
 int _PGSTE_GPS_NODAT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 

pte_t FUNC6(struct mm_struct *mm, unsigned long addr,
		     pte_t *ptep, pte_t new)
{
	pgste_t pgste;
	pte_t old;
	int nodat;

	FUNC1();
	pgste = FUNC5(mm, addr, ptep);
	nodat = !!(FUNC0(pgste) & _PGSTE_GPS_NODAT);
	old = FUNC3(mm, addr, ptep, nodat);
	old = FUNC4(mm, addr, ptep, pgste, old, new);
	FUNC2();
	return old;
}