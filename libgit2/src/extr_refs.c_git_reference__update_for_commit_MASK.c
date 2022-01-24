#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_7__ {int /*<<< orphan*/  oid; } ;
struct TYPE_8__ {TYPE_1__ target; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC12(
	git_repository *repo,
	git_reference *ref,
	const char *ref_name,
	const git_oid *id,
	const char *operation)
{
	git_reference *ref_new = NULL;
	git_commit *commit = NULL;
	git_buf reflog_msg = GIT_BUF_INIT;
	const git_signature *who;
	int error;

	if ((error = FUNC7(&commit, repo, id)) < 0 ||
		(error = FUNC4(&reflog_msg, "%s%s: %s",
			operation ? operation : "commit",
			FUNC0(commit),
			FUNC8(commit))) < 0)
		goto done;

	who = FUNC5(commit);

	if (ref) {
		if ((error = FUNC1(ref)) < 0)
			return error;

		error = FUNC11(&ref_new, repo, ref->name, id, NULL, 1, who,
					  FUNC2(&reflog_msg), &ref->target.oid, NULL);
	}
	else
		error = FUNC9(
			repo, ref_name, id, who, FUNC2(&reflog_msg));

done:
	FUNC10(ref_new);
	FUNC3(&reflog_msg);
	FUNC6(commit);
	return error;
}