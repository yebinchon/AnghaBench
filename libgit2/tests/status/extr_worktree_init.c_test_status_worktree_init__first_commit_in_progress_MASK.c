#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ status; int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ status_entry_single ;
typedef  int /*<<< orphan*/  result ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 scalar_t__ GIT_STATUS_INDEX_NEW ; 
 scalar_t__ GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  cb_status__single ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cleanup_new_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC13(void)
{
	git_repository *repo;
	git_index *index;
	status_entry_single result;

	FUNC4(&cleanup_new_repo, "getting_started");

	FUNC3(FUNC10(&repo, "getting_started", 0));
	FUNC2("getting_started/testfile.txt", "content\n");

	FUNC12(&result, 0, sizeof(result));
	FUNC3(FUNC11(repo, cb_status__single, &result));
	FUNC1(1, result.count);
	FUNC0(result.status == GIT_STATUS_WT_NEW);

	FUNC3(FUNC9(&index, repo));
	FUNC3(FUNC5(index, "testfile.txt"));
	FUNC3(FUNC7(index));

	FUNC12(&result, 0, sizeof(result));
	FUNC3(FUNC11(repo, cb_status__single, &result));
	FUNC1(1, result.count);
	FUNC0(result.status == GIT_STATUS_INDEX_NEW);

	FUNC6(index);
	FUNC8(repo);
}