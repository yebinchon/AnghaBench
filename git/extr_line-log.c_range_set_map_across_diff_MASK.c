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
struct range_set {int dummy; } ;
struct diff_ranges {int /*<<< orphan*/  parent; int /*<<< orphan*/  target; } ;

/* Variables and functions */
 struct range_set RANGE_SET_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct diff_ranges*,struct diff_ranges*,struct range_set*) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_ranges*) ; 
 int /*<<< orphan*/  FUNC2 (struct range_set*,struct range_set*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct range_set*) ; 
 int /*<<< orphan*/  FUNC4 (struct range_set*,struct range_set*,struct diff_ranges*) ; 
 int /*<<< orphan*/  FUNC5 (struct range_set*,struct range_set*,int /*<<< orphan*/ *) ; 
 struct diff_ranges* FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct range_set *out,
				      struct range_set *rs,
				      struct diff_ranges *diff,
				      struct diff_ranges **touched_out)
{
	struct diff_ranges *touched = FUNC6(sizeof(*touched));
	struct range_set tmp1 = RANGE_SET_INIT;
	struct range_set tmp2 = RANGE_SET_INIT;

	FUNC1(touched);
	FUNC0(touched, diff, rs);
	FUNC2(&tmp1, rs, &touched->target);
	FUNC4(&tmp2, &tmp1, diff);
	FUNC5(out, &tmp2, &touched->parent);
	FUNC3(&tmp1);
	FUNC3(&tmp2);

	*touched_out = touched;
}