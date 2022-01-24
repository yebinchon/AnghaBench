#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  new_name; int /*<<< orphan*/  old_name; } ;
typedef  TYPE_2__ rename_cb_data ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_7__ {int /*<<< orphan*/  symbolic; } ;
struct TYPE_9__ {TYPE_1__ target; } ;
typedef  TYPE_3__ git_reference ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 scalar_t__ GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char const*) ; 
 int FUNC4 (TYPE_3__**,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(git_repository *repo, const char *path, void *payload)
{
	rename_cb_data *data = (rename_cb_data *) payload;
	git_reference *head = NULL;
	char *gitdir = NULL;
	int error;

	if ((error = FUNC4(&head, repo, path)) < 0) {
		FUNC2(GIT_ERROR_REFERENCE, "could not read HEAD when renaming references");
		goto out;
	}

	if ((gitdir = FUNC3(path)) == NULL) {
		error = -1;
		goto out;
	}

	if (FUNC6(head) != GIT_REFERENCE_SYMBOLIC ||
	    FUNC1(head->target.symbolic, data->old_name) != 0) {
		error = 0;
		goto out;
	}

	/* Update HEAD it was pointing to the reference being renamed */
	if ((error = FUNC7(gitdir, data->new_name)) < 0) {
		FUNC2(GIT_ERROR_REFERENCE, "failed to update HEAD after renaming reference");
		goto out;
	}

out:
	FUNC5(head);
	FUNC0(gitdir);

	return error;
}