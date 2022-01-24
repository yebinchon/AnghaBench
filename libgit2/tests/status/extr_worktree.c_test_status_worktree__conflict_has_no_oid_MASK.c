#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_11__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_status_list ;
struct TYPE_28__ {TYPE_8__* index_to_workdir; TYPE_5__* head_to_index; int /*<<< orphan*/  status; } ;
typedef  TYPE_9__ git_status_entry ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_21__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_18__ {TYPE_2__ member_0; } ;
typedef  TYPE_10__ git_oid ;
struct TYPE_20__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_19__ {int mode; char* path; int /*<<< orphan*/  id; TYPE_1__ member_0; } ;
typedef  TYPE_11__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_26__ {int flags; scalar_t__ mode; scalar_t__ size; int /*<<< orphan*/  id; int /*<<< orphan*/  path; } ;
struct TYPE_25__ {int /*<<< orphan*/  size; int /*<<< orphan*/  mode; int /*<<< orphan*/  id; int /*<<< orphan*/  path; } ;
struct TYPE_27__ {TYPE_7__ new_file; TYPE_6__ old_file; } ;
struct TYPE_23__ {int /*<<< orphan*/  size; int /*<<< orphan*/  mode; int /*<<< orphan*/  id; int /*<<< orphan*/  path; } ;
struct TYPE_22__ {scalar_t__ mode; int /*<<< orphan*/  id; int /*<<< orphan*/  path; } ;
struct TYPE_24__ {TYPE_4__ new_file; TYPE_3__ old_file; } ;

/* Variables and functions */
 int GIT_DIFF_FLAG_VALID_ID ; 
 int GIT_STATUS_CONFLICTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_11__*,TYPE_11__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_10__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 TYPE_9__* FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC15(void)
{
	git_repository *repo = FUNC5("status");
	git_index *index;
	git_index_entry entry = {0};
	git_status_list *statuslist;
	const git_status_entry *status;
	git_oid zero_id = {{0}};

	entry.mode = 0100644;
	entry.path = "modified_file";
	FUNC9(&entry.id, "452e4244b5d083ddf0460acf1ecc74db9dcfa11a");

	FUNC4(FUNC10(&index, repo));
	FUNC4(FUNC6(index, &entry, &entry, &entry));

	FUNC14(&statuslist, repo, NULL);

	FUNC1(16, FUNC12(statuslist));

	status = FUNC11(statuslist, 2);

	FUNC1(GIT_STATUS_CONFLICTED, status->status);
	FUNC3("modified_file", status->head_to_index->old_file.path);
	FUNC0(!FUNC8(&zero_id, &status->head_to_index->old_file.id));
	FUNC0(0 != status->head_to_index->old_file.mode);
	FUNC3("modified_file", status->head_to_index->new_file.path);
	FUNC2(&zero_id, &status->head_to_index->new_file.id);
	FUNC1(0, status->head_to_index->new_file.mode);
	FUNC1(0, status->head_to_index->new_file.size);

	FUNC3("modified_file", status->index_to_workdir->old_file.path);
	FUNC2(&zero_id, &status->index_to_workdir->old_file.id);
	FUNC1(0, status->index_to_workdir->old_file.mode);
	FUNC1(0, status->index_to_workdir->old_file.size);
	FUNC3("modified_file", status->index_to_workdir->new_file.path);
	FUNC0(
		!FUNC8(&zero_id, &status->index_to_workdir->new_file.id) ||
		!(status->index_to_workdir->new_file.flags & GIT_DIFF_FLAG_VALID_ID));
	FUNC0(0 != status->index_to_workdir->new_file.mode);
	FUNC0(0 != status->index_to_workdir->new_file.size);

	FUNC7(index);
	FUNC13(statuslist);
}