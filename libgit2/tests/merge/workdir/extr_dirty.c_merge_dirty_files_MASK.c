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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC7 (char**) ; 

__attribute__((used)) static int FUNC8(char *dirty_files[])
{
	git_reference *head;
	git_object *head_object;
	int error;

	FUNC0(FUNC4(&head, repo));
	FUNC0(FUNC3(&head_object, head, GIT_OBJECT_COMMIT));
	FUNC0(FUNC5(repo, head_object, GIT_RESET_HARD, NULL));

	FUNC7(dirty_files);

	error = FUNC6();

	FUNC1(head_object);
	FUNC2(head);

	return error;
}