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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char**) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 
 int /*<<< orphan*/  FUNC9 (char**) ; 

__attribute__((used)) static int FUNC10(char *files[])
{
	git_reference *head;
	git_object *head_object;
	int error;

	FUNC0(FUNC5(&head, repo));
	FUNC0(FUNC4(&head_object, head, GIT_OBJECT_COMMIT));
	FUNC0(FUNC6(repo, head_object, GIT_RESET_HARD, NULL));

	/* Emulate checkout with a broken or misconfigured filter:  modify some
	 * files on-disk and then update the index with the updated file size
	 * and time, as if some filter applied them.  These files should not be
	 * treated as dirty since we created them.
	 *
	 * (Make sure to update the index stamp to defeat racy-git protections
	 * trying to sanity check the files in the index; those would rehash the
	 * files, showing them as dirty, the exact mechanism we're trying to avoid.)
	 */

	FUNC9(files);
	FUNC7(files);

	FUNC0(FUNC1(repo_index));

	error = FUNC8();

	FUNC2(head_object);
	FUNC3(head);

	return error;
}