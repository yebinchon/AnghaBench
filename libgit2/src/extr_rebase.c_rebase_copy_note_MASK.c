#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_signature ;
struct TYPE_3__ {int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_note ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,char*,char*) ; 

__attribute__((used)) static int FUNC9(
	git_rebase *rebase,
	const char *notes_ref,
	git_oid *from,
	git_oid *to,
	const git_signature *committer)
{
	git_note *note = NULL;
	git_oid note_id;
	git_signature *who = NULL;
	int error;

	if ((error = FUNC5(&note, rebase->repo, notes_ref, from)) < 0) {
		if (error == GIT_ENOTFOUND) {
			FUNC0();
			error = 0;
		}

		goto done;
	}

	if (!committer) {
		if((error = FUNC6(&who, rebase->repo)) < 0) {
			if (error != GIT_ENOTFOUND ||
				(error = FUNC8(&who, "unknown", "unknown")) < 0)
				goto done;

			FUNC0();
		}

		committer = who;
	}

	error = FUNC2(&note_id, rebase->repo, notes_ref,
		FUNC1(note), committer, to, FUNC4(note), 0);

done:
	FUNC3(note);
	FUNC7(who);

	return error;
}