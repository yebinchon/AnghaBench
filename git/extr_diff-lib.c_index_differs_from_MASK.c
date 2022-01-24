#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct setup_revision_opt {char const* def; } ;
struct TYPE_4__ {int quick; int exit_with_status; scalar_t__ has_changes; } ;
struct TYPE_3__ {int ita_invisible_in_index; TYPE_2__ flags; } ;
struct rev_info {TYPE_1__ diffopt; int /*<<< orphan*/  pending; } ;
struct repository {int dummy; } ;
struct diff_flags {int dummy; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct diff_flags const*) ; 
 int /*<<< orphan*/  FUNC1 (struct setup_revision_opt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rev_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rev_info*,struct setup_revision_opt*) ; 

int FUNC6(struct repository *r,
		       const char *def, const struct diff_flags *flags,
		       int ita_invisible_in_index)
{
	struct rev_info rev;
	struct setup_revision_opt opt;

	FUNC3(r, &rev, NULL);
	FUNC1(&opt, 0, sizeof(opt));
	opt.def = def;
	FUNC5(0, NULL, &rev, &opt);
	rev.diffopt.flags.quick = 1;
	rev.diffopt.flags.exit_with_status = 1;
	if (flags)
		FUNC0(&rev.diffopt.flags, flags);
	rev.diffopt.ita_invisible_in_index = ita_invisible_in_index;
	FUNC4(&rev, 1);
	FUNC2(&rev.pending);
	return (rev.diffopt.flags.has_changes != 0);
}