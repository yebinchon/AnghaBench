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
struct rev_info {int max_age; int /*<<< orphan*/  track_linear; int /*<<< orphan*/  ignore_missing_links; int /*<<< orphan*/  commits; scalar_t__ topo_walk_info; scalar_t__ reflog_info; int /*<<< orphan*/  limited; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int ADDED ; 
 int SEEN ; 
 int SHOWN ; 
#define  commit_error 129 
#define  commit_ignore 128 
 int FUNC0 (struct rev_info*,struct commit*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rev_info*,struct commit*) ; 
 struct commit* FUNC3 (scalar_t__) ; 
 struct commit* FUNC4 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct commit* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct rev_info*,struct commit*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct rev_info*,struct commit*) ; 
 int /*<<< orphan*/  FUNC9 (struct rev_info*,struct commit*) ; 
 int /*<<< orphan*/  FUNC10 (struct rev_info*,struct commit*) ; 

__attribute__((used)) static struct commit *FUNC11(struct rev_info *revs)
{
	while (1) {
		struct commit *commit;

		if (revs->reflog_info)
			commit = FUNC3(revs->reflog_info);
		else if (revs->topo_walk_info)
			commit = FUNC4(revs);
		else
			commit = FUNC6(&revs->commits);

		if (!commit)
			return NULL;

		if (revs->reflog_info)
			commit->object.flags &= ~(ADDED | SEEN | SHOWN);

		/*
		 * If we haven't done the list limiting, we need to look at
		 * the parents here. We also need to do the date-based limiting
		 * that we'd otherwise have done in limit_list().
		 */
		if (!revs->limited) {
			if (revs->max_age != -1 &&
			    FUNC0(revs, commit) < revs->max_age)
				continue;

			if (revs->reflog_info)
				FUNC10(revs, commit);
			else if (revs->topo_walk_info)
				FUNC2(revs, commit);
			else if (FUNC7(revs, commit, &revs->commits, NULL) < 0) {
				if (!revs->ignore_missing_links)
					FUNC1("Failed to traverse parents of commit %s",
						FUNC5(&commit->object.oid));
			}
		}

		switch (FUNC8(revs, commit)) {
		case commit_ignore:
			continue;
		case commit_error:
			FUNC1("Failed to simplify parents of commit %s",
			    FUNC5(&commit->object.oid));
		default:
			if (revs->track_linear)
				FUNC9(revs, commit);
			return commit;
		}
	}
}