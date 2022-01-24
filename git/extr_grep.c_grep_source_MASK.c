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
struct grep_source {int dummy; } ;
struct grep_opt {int /*<<< orphan*/  pattern_expression; int /*<<< orphan*/  all_match; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct grep_opt*,struct grep_source*,int) ; 

int FUNC3(struct grep_opt *opt, struct grep_source *gs)
{
	/*
	 * we do not have to do the two-pass grep when we do not check
	 * buffer-wide "all-match".
	 */
	if (!opt->all_match)
		return FUNC2(opt, gs, 0);

	/* Otherwise the toplevel "or" terms hit a bit differently.
	 * We first clear hit markers from them.
	 */
	FUNC1(opt->pattern_expression);
	FUNC2(opt, gs, 1);

	if (!FUNC0(opt->pattern_expression))
		return 0;

	return FUNC2(opt, gs, 0);
}