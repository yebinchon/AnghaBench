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
typedef  scalar_t__ u64 ;
struct plt_entry {scalar_t__ add; scalar_t__ br; scalar_t__ adrp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_4K ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

bool FUNC3(const struct plt_entry *a, const struct plt_entry *b)
{
	u64 p, q;

	/*
	 * Check whether both entries refer to the same target:
	 * do the cheapest checks first.
	 * If the 'add' or 'br' opcodes are different, then the target
	 * cannot be the same.
	 */
	if (a->add != b->add || a->br != b->br)
		return false;

	p = FUNC0((u64)a, SZ_4K);
	q = FUNC0((u64)b, SZ_4K);

	/*
	 * If the 'adrp' opcodes are the same then we just need to check
	 * that they refer to the same 4k region.
	 */
	if (a->adrp == b->adrp && p == q)
		return true;

	return (p + FUNC1(FUNC2(a->adrp))) ==
	       (q + FUNC1(FUNC2(b->adrp)));
}