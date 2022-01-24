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
struct commit_name {int prio; int name_checked; int /*<<< orphan*/  path; scalar_t__ tag; int /*<<< orphan*/  sha1; } ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_TAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(git_buf *buf, git_repository *repo, struct commit_name *n)
{
	if (n->prio == 2 && !n->tag) {
		if (FUNC2(&n->tag, repo, &n->sha1) < 0) {
			FUNC1(GIT_ERROR_TAG, "annotated tag '%s' not available", n->path);
			return -1;
		}
	}

	if (n->tag && !n->name_checked) {
		if (!FUNC3(n->tag)) {
			FUNC1(GIT_ERROR_TAG, "annotated tag '%s' has no embedded name", n->path);
			return -1;
		}

		/* TODO: Cope with warnings
		if (strcmp(n->tag->tag, all ? n->path + 5 : n->path))
			warning(_("tag '%s' is really '%s' here"), n->tag->tag, n->path);
		*/

		n->name_checked = 1;
	}

	if (n->tag)
		FUNC0(buf, "%s", FUNC3(n->tag));
	else
		FUNC0(buf, "%s", n->path);

	return 0;
}