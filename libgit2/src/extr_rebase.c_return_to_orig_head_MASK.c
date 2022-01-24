#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_7__ {int /*<<< orphan*/  orig_head_name; int /*<<< orphan*/  repo; int /*<<< orphan*/  orig_head_id; int /*<<< orphan*/  onto_id; } ;
typedef  TYPE_1__ git_rebase ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(git_rebase *rebase)
{
	git_reference *terminal_ref = NULL, *branch_ref = NULL, *head_ref = NULL;
	git_commit *terminal_commit = NULL;
	git_buf branch_msg = GIT_BUF_INIT, head_msg = GIT_BUF_INIT;
	char onto[GIT_OID_HEXSZ];
	int error = 0;

	FUNC4(onto, &rebase->onto_id);

	if ((error = FUNC1(&branch_msg,
			"rebase finished: %s onto %.*s",
			rebase->orig_head_name, GIT_OID_HEXSZ, onto)) == 0 &&
		(error = FUNC1(&head_msg,
			"rebase finished: returning to %s",
			rebase->orig_head_name)) == 0 &&
		(error = FUNC9(&terminal_ref, rebase->repo)) == 0 &&
		(error = FUNC7((git_object **)&terminal_commit,
			terminal_ref, GIT_OBJECT_COMMIT)) == 0 &&
		(error = FUNC5(&branch_ref,
			rebase->repo, rebase->orig_head_name,
			FUNC3(terminal_commit), 1,
			&rebase->orig_head_id, branch_msg.ptr)) == 0)
		error = FUNC8(&head_ref,
			rebase->repo, GIT_HEAD_FILE, rebase->orig_head_name, 1,
			head_msg.ptr);

	FUNC0(&head_msg);
	FUNC0(&branch_msg);
	FUNC2(terminal_commit);
	FUNC6(head_ref);
	FUNC6(branch_ref);
	FUNC6(terminal_ref);

	return error;
}