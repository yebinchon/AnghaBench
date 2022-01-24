#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  paired; } ;
typedef  TYPE_1__ git_status_list ;
struct TYPE_9__ {int /*<<< orphan*/ * index_to_workdir; int /*<<< orphan*/ * head_to_index; int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ git_status_entry ;
typedef  int /*<<< orphan*/  git_diff_delta ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
	git_diff_delta *head2idx,
	git_diff_delta *idx2wd,
	void *payload)
{
	git_status_list *status = payload;
	git_status_entry *status_entry;

	if (!FUNC4(status, head2idx, idx2wd))
		return 0;

	status_entry = FUNC1(sizeof(git_status_entry));
	FUNC0(status_entry);

	status_entry->status = FUNC3(status, head2idx, idx2wd);
	status_entry->head_to_index = head2idx;
	status_entry->index_to_workdir = idx2wd;

	return FUNC2(&status->paired, status_entry);
}