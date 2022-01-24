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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(git_repository *repo, const git_oid *id, const char *new)
{
	int error;
	git_buf log_message = GIT_BUF_INIT;
	git_object *object = NULL, *peeled = NULL;
	git_reference *new_head = NULL, *current = NULL;

	FUNC0(repo && id);

	if ((error = FUNC11(&current, repo, GIT_HEAD_FILE)) < 0)
		return error;

	if ((error = FUNC6(&object, repo, id, GIT_OBJECT_ANY)) < 0)
		goto cleanup;

	if ((error = FUNC7(&peeled, object, GIT_OBJECT_COMMIT)) < 0)
		goto cleanup;

	if (new == NULL)
		new = FUNC8(FUNC5(peeled));

	if ((error = FUNC1(&log_message, current, new)) < 0)
		goto cleanup;

	error = FUNC9(&new_head, repo, GIT_HEAD_FILE, FUNC5(peeled), true, FUNC2(&log_message));

cleanup:
	FUNC3(&log_message);
	FUNC4(object);
	FUNC4(peeled);
	FUNC10(current);
	FUNC10(new_head);
	return error;
}