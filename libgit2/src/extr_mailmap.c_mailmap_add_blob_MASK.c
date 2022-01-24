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
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_mailmap ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(
	git_mailmap *mm, git_repository *repo, const char *rev)
{
	git_object *object = NULL;
	git_blob *blob = NULL;
	git_buf content = GIT_BUF_INIT;
	int error;

	FUNC0(mm && repo);

	error = FUNC6(&object, repo, rev);
	if (error < 0)
		goto cleanup;

	error = FUNC5((git_object **)&blob, object, GIT_OBJECT_BLOB);
	if (error < 0)
		goto cleanup;

	error = FUNC1(&content, blob);
	if (error < 0)
		goto cleanup;

	error = FUNC7(mm, content.ptr, content.size);
	if (error < 0)
		goto cleanup;

cleanup:
	FUNC3(&content);
	FUNC2(blob);
	FUNC4(object);
	return error;
}