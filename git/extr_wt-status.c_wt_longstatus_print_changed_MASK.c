#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wt_status_change_data {scalar_t__ worktree_status; } ;
struct TYPE_2__ {int nr; struct string_list_item* items; } ;
struct wt_status {TYPE_1__ change; } ;
struct string_list_item {struct wt_status_change_data* util; } ;

/* Variables and functions */
 scalar_t__ DIFF_STATUS_UNMERGED ; 
 int /*<<< orphan*/  WT_STATUS_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (struct wt_status*,int /*<<< orphan*/ ,struct string_list_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct wt_status*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wt_status*) ; 
 int FUNC3 (struct wt_status*,int*) ; 

__attribute__((used)) static void FUNC4(struct wt_status *s)
{
	int i, dirty_submodules;
	int worktree_changes = FUNC3(s, &dirty_submodules);

	if (!worktree_changes)
		return;

	FUNC1(s, worktree_changes < 0, dirty_submodules);

	for (i = 0; i < s->change.nr; i++) {
		struct wt_status_change_data *d;
		struct string_list_item *it;
		it = &(s->change.items[i]);
		d = it->util;
		if (!d->worktree_status ||
		    d->worktree_status == DIFF_STATUS_UNMERGED)
			continue;
		FUNC0(s, WT_STATUS_CHANGED, it);
	}
	FUNC2(s);
}