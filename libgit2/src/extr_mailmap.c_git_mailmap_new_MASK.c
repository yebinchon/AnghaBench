#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  entries; } ;
typedef  TYPE_1__ git_mailmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mailmap_entry_cmp ; 

int FUNC4(git_mailmap **out)
{
	int error;
	git_mailmap *mm = FUNC1(1, sizeof(git_mailmap));
	FUNC0(mm);

	error = FUNC3(&mm->entries, 0, mailmap_entry_cmp);
	if (error < 0) {
		FUNC2(mm);
		return error;
	}
	*out = mm;
	return 0;
}