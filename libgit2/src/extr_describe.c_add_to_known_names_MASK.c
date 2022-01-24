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
struct commit_name {unsigned int prio; int /*<<< orphan*/  peeled; int /*<<< orphan*/ * path; int /*<<< orphan*/  sha1; scalar_t__ name_checked; int /*<<< orphan*/ * tag; } ;
typedef  int /*<<< orphan*/  git_tag ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oidmap ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit_name*) ; 
 struct commit_name* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct commit_name* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct commit_name*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,struct commit_name*,unsigned int,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC9(
	git_repository *repo,
	git_oidmap *names,
	const char *path,
	const git_oid *peeled,
	unsigned int prio,
	const git_oid *sha1)
{
	struct commit_name *e = FUNC1(names, peeled);
	bool found = (e != NULL);

	git_tag *tag = NULL;
	if (FUNC8(&tag, repo, e, prio, sha1)) {
		if (!found) {
			e = FUNC3(sizeof(struct commit_name));
			FUNC0(e);

			e->path = NULL;
			e->tag = NULL;
		}

		if (e->tag)
			FUNC7(e->tag);
		e->tag = tag;
		e->prio = prio;
		e->name_checked = 0;
		FUNC5(&e->sha1, sha1);
		FUNC2(e->path);
		e->path = FUNC4(path);
		FUNC5(&e->peeled, peeled);

		if (!found && FUNC6(names, &e->peeled, e) < 0)
			return -1;
	}
	else
		FUNC7(tag);

	return 0;
}