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
struct topa {int last; } ;

/* Variables and functions */
 int /*<<< orphan*/  PT_CAP_topa_multiple_entries ; 
 int TENTS_PER_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct topa *topa)
{
	/* single-entry ToPA is a special case */
	if (!FUNC0(PT_CAP_topa_multiple_entries))
		return !!topa->last;

	return topa->last == TENTS_PER_PAGE - 1;
}