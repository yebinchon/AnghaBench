#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct diff_flags {int /*<<< orphan*/  ignore_untracked_in_submodules; scalar_t__ dirty_submodules; int /*<<< orphan*/  ignore_dirty_submodules; scalar_t__ ignore_submodules; int /*<<< orphan*/  override_submodule_config; } ;
struct diff_options {struct diff_flags flags; TYPE_1__* repo; } ;
struct cache_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  ce_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct cache_entry const*,struct stat*,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_options*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct diff_options *diffopt,
				     const struct cache_entry *ce,
				     struct stat *st, unsigned ce_option,
				     unsigned *dirty_submodule)
{
	int changed = FUNC1(diffopt->repo->index, ce, st, ce_option);
	if (FUNC0(ce->ce_mode)) {
		struct diff_flags orig_flags = diffopt->flags;
		if (!diffopt->flags.override_submodule_config)
			FUNC3(diffopt, ce->name);
		if (diffopt->flags.ignore_submodules)
			changed = 0;
		else if (!diffopt->flags.ignore_dirty_submodules &&
			 (!changed || diffopt->flags.dirty_submodules))
			*dirty_submodule = FUNC2(ce->name,
								 diffopt->flags.ignore_untracked_in_submodules);
		diffopt->flags = orig_flags;
	}
	return changed;
}