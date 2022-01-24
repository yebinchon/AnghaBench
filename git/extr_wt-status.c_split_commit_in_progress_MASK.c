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
struct wt_status {char* branch; int /*<<< orphan*/  workdir_dirty; int /*<<< orphan*/  nowarn; int /*<<< orphan*/  amend; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(struct wt_status *s)
{
	int split_in_progress = 0;
	char *head, *orig_head, *rebase_amend, *rebase_orig_head;

	if ((!s->amend && !s->nowarn && !s->workdir_dirty) ||
	    !s->branch || FUNC2(s->branch, "HEAD"))
		return 0;

	head = FUNC1("HEAD");
	orig_head = FUNC1("ORIG_HEAD");
	rebase_amend = FUNC1("rebase-merge/amend");
	rebase_orig_head = FUNC1("rebase-merge/orig-head");

	if (!head || !orig_head || !rebase_amend || !rebase_orig_head)
		; /* fall through, no split in progress */
	else if (!FUNC2(rebase_amend, rebase_orig_head))
		split_in_progress = !!FUNC2(head, rebase_amend);
	else if (FUNC2(orig_head, rebase_orig_head))
		split_in_progress = 1;

	FUNC0(head);
	FUNC0(orig_head);
	FUNC0(rebase_amend);
	FUNC0(rebase_orig_head);

	return split_in_progress;
}