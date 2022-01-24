#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_status_list ;
struct TYPE_10__ {TYPE_2__* head_to_index; } ;
typedef  TYPE_3__ git_status_entry ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_11__ {int /*<<< orphan*/  id; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ git_rebase_operation ;
typedef  int /*<<< orphan*/  git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_annotated_commit ;
struct TYPE_8__ {int /*<<< orphan*/  id; int /*<<< orphan*/  path; } ;
struct TYPE_9__ {TYPE_1__ new_file; } ;

/* Variables and functions */
 int GIT_REBASE_OPERATION_PICK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 

void FUNC22(void)
{
	git_rebase *rebase;
	git_reference *branch_ref, *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_rebase_operation *rebase_operation;
	git_status_list *status_list;
	const git_status_entry *status_entry;
	git_oid pick_id, file1_id;
	git_oid master_id, beef_id;

	FUNC8(&master_id, "efad0b11c47cb2f0220cbd6f5b0f93bb99064b00");
	FUNC8(&beef_id, "b146bd7608eac53d9bf9e1a6963543588b555c64");

	FUNC5(FUNC17(&branch_ref, repo, "refs/heads/beef"));
	FUNC5(FUNC17(&upstream_ref, repo, "refs/heads/master"));

	FUNC5(FUNC7(&branch_head, repo, branch_ref));
	FUNC5(FUNC7(&upstream_head, repo, upstream_ref));

	FUNC5(FUNC10(&rebase, repo, branch_head, upstream_head, NULL, NULL));

	FUNC4("refs/heads/beef", FUNC15(rebase));
	FUNC3(&beef_id, FUNC14(rebase));

	FUNC4("master", FUNC13(rebase));
	FUNC3(&master_id, FUNC12(rebase));

	FUNC5(FUNC11(&rebase_operation, rebase));

	FUNC8(&pick_id, "da9c51a23d02d931a486f45ad18cda05cf5d2b94");

	FUNC2(GIT_REBASE_OPERATION_PICK, rebase_operation->type);
	FUNC3(&pick_id, &rebase_operation->id);
	FUNC1("da9c51a23d02d931a486f45ad18cda05cf5d2b94\n", 41, "rebase/.git/rebase-merge/current");
	FUNC1("1\n", 2, "rebase/.git/rebase-merge/msgnum");

	FUNC5(FUNC21(&status_list, repo, NULL));
	FUNC2(1, FUNC19(status_list));
	FUNC0(status_entry = FUNC18(status_list, 0));

	FUNC4("beef.txt", status_entry->head_to_index->new_file.path);

	FUNC8(&file1_id, "8d95ea62e621f1d38d230d9e7d206e41096d76af");
	FUNC3(&file1_id, &status_entry->head_to_index->new_file.id);

	FUNC20(status_list);
	FUNC6(branch_head);
	FUNC6(upstream_head);
	FUNC16(branch_ref);
	FUNC16(upstream_ref);
	FUNC9(rebase);
}