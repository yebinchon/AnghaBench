#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_dir_flag ;
struct TYPE_7__ {int /*<<< orphan*/  is_ignored; } ;
typedef  TYPE_1__ filesystem_iterator_frame ;
struct TYPE_9__ {int /*<<< orphan*/  path; } ;
struct TYPE_8__ {int /*<<< orphan*/  current_is_ignored; TYPE_6__ entry; int /*<<< orphan*/  ignores; } ;
typedef  TYPE_2__ filesystem_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_IGNORE_NOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(filesystem_iterator *iter)
{
	filesystem_iterator_frame *frame;
	git_dir_flag dir_flag = FUNC0(&iter->entry);

	if (FUNC3(&iter->current_is_ignored,
			&iter->ignores, iter->entry.path, dir_flag) < 0) {
		FUNC2();
		iter->current_is_ignored = GIT_IGNORE_NOTFOUND;
	}

	/* use ignore from containing frame stack */
	if (iter->current_is_ignored <= GIT_IGNORE_NOTFOUND) {
		frame = FUNC1(iter);
		iter->current_is_ignored = frame->is_ignored;
	}
}