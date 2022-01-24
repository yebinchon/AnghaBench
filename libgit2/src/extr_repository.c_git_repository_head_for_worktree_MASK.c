#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 scalar_t__ GIT_REFERENCE_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(git_reference **out, git_repository *repo, const char *name)
{
	git_buf path = GIT_BUF_INIT;
	git_reference *head = NULL;
	int error;

	FUNC0(out && repo && name);

	*out = NULL;

	if ((error = FUNC1(&path, repo, name, GIT_HEAD_FILE)) < 0 ||
	    (error = FUNC3(&head, repo, path.ptr)) < 0)
		goto out;

	if (FUNC7(head) != GIT_REFERENCE_DIRECT) {
		git_reference *resolved;

		error = FUNC5(&resolved, repo, FUNC6(head), -1);
		FUNC4(head);
		head = resolved;
	}

	*out = head;

out:
	if (error)
		FUNC4(head);

	FUNC2(&path);

	return error;
}