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
struct diff_options {int /*<<< orphan*/  pathspec; int /*<<< orphan*/  repo; } ;
struct rev_info {struct diff_options diffopt; int /*<<< orphan*/  prune_data; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct rev_info*,struct object_id const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 

int FUNC4(const struct object_id *tree_oid, struct diff_options *opt)
{
	struct rev_info revs;

	FUNC3(opt->repo, &revs, NULL);
	FUNC0(&revs.prune_data, &opt->pathspec);
	revs.diffopt = *opt;

	if (FUNC1(&revs, tree_oid, NULL, 1))
		FUNC2(128);
	return 0;
}