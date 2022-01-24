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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int FUNC13(git_repository* repo)
{
	git_reference *old_head = NULL,	*new_head = NULL, *current = NULL;
	git_object *object = NULL;
	git_buf log_message = GIT_BUF_INIT;
	int error;

	FUNC0(repo);

	if ((error = FUNC10(&current, repo, GIT_HEAD_FILE)) < 0)
		return error;

	if ((error = FUNC12(&old_head, repo)) < 0)
		goto cleanup;

	if ((error = FUNC6(&object, repo, FUNC11(old_head), GIT_OBJECT_COMMIT)) < 0)
		goto cleanup;

	if ((error = FUNC1(&log_message, current, FUNC7(FUNC5(object)))) < 0)
		goto cleanup;

	error = FUNC8(&new_head, repo, GIT_HEAD_FILE, FUNC11(old_head),
			1, FUNC2(&log_message));

cleanup:
	FUNC3(&log_message);
	FUNC4(object);
	FUNC9(old_head);
	FUNC9(new_head);
	FUNC9(current);
	return error;
}