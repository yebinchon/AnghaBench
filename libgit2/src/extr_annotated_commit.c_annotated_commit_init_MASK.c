#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_6__ {char* id_str; struct TYPE_6__* description; int /*<<< orphan*/  commit; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ANNOTATED_COMMIT_REAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 TYPE_1__* FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(
	git_annotated_commit **out,
	git_commit *commit,
	const char *description)
{
	git_annotated_commit *annotated_commit;
	int error = 0;

	FUNC1(out && commit);

	*out = NULL;

	annotated_commit = FUNC2(1, sizeof(git_annotated_commit));
	FUNC0(annotated_commit);

	annotated_commit->type = GIT_ANNOTATED_COMMIT_REAL;

	if ((error = FUNC4(&annotated_commit->commit, commit)) < 0)
		goto done;

	FUNC6(annotated_commit->id_str, FUNC5(commit));
	annotated_commit->id_str[GIT_OID_HEXSZ] = '\0';

	if (!description)
		description = annotated_commit->id_str;

	annotated_commit->description = FUNC3(description);
	FUNC0(annotated_commit->description);

done:
	if (!error)
		*out = annotated_commit;

	return error;
}