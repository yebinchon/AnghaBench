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
struct rev_info {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
struct argv_array {int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; } ;
typedef  enum ahead_behind_flags { ____Placeholder_ahead_behind_flags } ahead_behind_flags ;

/* Variables and functions */
 int AHEAD_BEHIND_FULL ; 
 int AHEAD_BEHIND_QUICK ; 
 int /*<<< orphan*/  ALL_REV_FLAGS ; 
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int SYMMETRIC_LEFT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC3 (struct argv_array*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct argv_array*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct commit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct commit* FUNC7 (struct rev_info*) ; 
 struct commit* FUNC8 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct rev_info*) ; 
 scalar_t__ FUNC11 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC14(const char *branch_name, const char *base,
			     int *num_ours, int *num_theirs,
			     enum ahead_behind_flags abf)
{
	struct object_id oid;
	struct commit *ours, *theirs;
	struct rev_info revs;
	struct argv_array argv = ARGV_ARRAY_INIT;

	/* Cannot stat if what we used to build on no longer exists */
	if (FUNC11(base, &oid))
		return -1;
	theirs = FUNC8(the_repository, &oid);
	if (!theirs)
		return -1;

	if (FUNC11(branch_name, &oid))
		return -1;
	ours = FUNC8(the_repository, &oid);
	if (!ours)
		return -1;

	*num_theirs = *num_ours = 0;

	/* are we the same? */
	if (theirs == ours)
		return 0;
	if (abf == AHEAD_BEHIND_QUICK)
		return 1;
	if (abf != AHEAD_BEHIND_FULL)
		FUNC0("stat_branch_pair: invalid abf '%d'", abf);

	/* Run "rev-list --left-right ours...theirs" internally... */
	FUNC3(&argv, ""); /* ignored */
	FUNC3(&argv, "--left-right");
	FUNC4(&argv, "%s...%s",
			 FUNC9(&ours->object.oid),
			 FUNC9(&theirs->object.oid));
	FUNC3(&argv, "--");

	FUNC12(the_repository, &revs, NULL);
	FUNC13(argv.argc, argv.argv, &revs, NULL);
	if (FUNC10(&revs))
		FUNC6(FUNC1("revision walk setup failed"));

	/* ... and count the commits on each side. */
	while (1) {
		struct commit *c = FUNC7(&revs);
		if (!c)
			break;
		if (c->object.flags & SYMMETRIC_LEFT)
			(*num_ours)++;
		else
			(*num_theirs)++;
	}

	/* clear object flags smudged by the above traversal */
	FUNC5(ours, ALL_REV_FLAGS);
	FUNC5(theirs, ALL_REV_FLAGS);

	FUNC2(&argv);
	return 1;
}