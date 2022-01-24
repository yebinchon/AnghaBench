#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_13__ {int /*<<< orphan*/  symbolic; } ;
struct TYPE_14__ {scalar_t__ type; int /*<<< orphan*/  name; TYPE_1__ target; } ;
typedef  TYPE_2__ git_reference ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_REPOSITORY ; 
 char const* GIT_HEAD_FILE ; 
 scalar_t__ GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 int FUNC13 (TYPE_2__**,int /*<<< orphan*/ *,char const*) ; 
 char const* FUNC14 (TYPE_2__*) ; 
 int FUNC15 (TYPE_2__**,int /*<<< orphan*/ *,char const*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 

int FUNC17(
	git_repository* repo,
	const char* refname)
{
	git_reference *ref = NULL, *current = NULL, *new_head = NULL;
	git_buf log_message = GIT_BUF_INIT;
	int error;

	FUNC0(repo && refname);

	if ((error = FUNC13(&current, repo, GIT_HEAD_FILE)) < 0)
		return error;

	if ((error = FUNC1(&log_message, current, refname)) < 0)
		goto cleanup;

	error = FUNC13(&ref, repo, refname);
	if (error < 0 && error != GIT_ENOTFOUND)
		goto cleanup;

	if (ref && current->type == GIT_REFERENCE_SYMBOLIC && FUNC3(current->target.symbolic, ref->name) &&
	    FUNC10(ref) && FUNC4(ref)) {
		FUNC7(GIT_ERROR_REPOSITORY, "cannot set HEAD to reference '%s' as it is the current HEAD "
			"of a linked repository.", FUNC14(ref));
		error = -1;
		goto cleanup;
	}

	if (!error) {
		if (FUNC10(ref)) {
			error = FUNC15(&new_head, repo, GIT_HEAD_FILE,
					FUNC14(ref), true, FUNC5(&log_message));
		} else {
			error = FUNC2(repo, FUNC16(ref),
				FUNC12(ref) || FUNC11(ref) ? refname : NULL);
		}
	} else if (FUNC8(refname)) {
		error = FUNC15(&new_head, repo, GIT_HEAD_FILE, refname,
				true, FUNC5(&log_message));
	}

cleanup:
	FUNC6(&log_message);
	FUNC9(current);
	FUNC9(ref);
	FUNC9(new_head);
	return error;
}