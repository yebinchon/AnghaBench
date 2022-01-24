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
struct gmap {int /*<<< orphan*/  mm; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long _PAGE_INVALID ; 
 scalar_t__ _PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct gmap*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct gmap*) ; 
 unsigned long* FUNC3 (struct gmap*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct gmap *sg, unsigned long raddr)
{
	unsigned long *table;

	FUNC0(!FUNC2(sg));
	table = FUNC3(sg, raddr, 0); /* get page table pointer */
	if (!table || *table & _PAGE_INVALID)
		return;
	FUNC1(sg, raddr, raddr + _PAGE_SIZE - 1);
	FUNC4(sg->mm, raddr, (pte_t *) table);
}