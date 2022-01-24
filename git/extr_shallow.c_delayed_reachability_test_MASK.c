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
struct shallow_info {int* reachable; scalar_t__* need_reachability_test; int /*<<< orphan*/  commits; int /*<<< orphan*/  nr_commits; TYPE_1__* shallow; } ;
struct commit_array {int /*<<< orphan*/  nr; int /*<<< orphan*/  commits; } ;
struct commit {int dummy; } ;
typedef  int /*<<< orphan*/  ca ;
struct TYPE_2__ {int /*<<< orphan*/ * oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  add_ref ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct commit_array*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct commit_array*) ; 
 int FUNC2 (struct commit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct commit* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct commit_array*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC5(struct shallow_info *si, int c)
{
	if (si->need_reachability_test[c]) {
		struct commit *commit = FUNC3(the_repository,
						      &si->shallow->oid[c]);

		if (!si->commits) {
			struct commit_array ca;

			FUNC4(&ca, 0, sizeof(ca));
			FUNC1(add_ref, &ca);
			FUNC0(add_ref, &ca);
			si->commits = ca.commits;
			si->nr_commits = ca.nr;
		}

		si->reachable[c] = FUNC2(commit,
						       si->nr_commits,
						       si->commits);
		si->need_reachability_test[c] = 0;
	}
	return si->reachable[c];
}