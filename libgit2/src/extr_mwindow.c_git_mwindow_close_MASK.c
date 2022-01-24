#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  inuse_cnt; } ;
typedef  TYPE_1__ git_mwindow ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_THREAD ; 
 int /*<<< orphan*/  git__mwindow_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(git_mwindow **window)
{
	git_mwindow *w = *window;
	if (w) {
		if (FUNC1(&git__mwindow_mutex)) {
			FUNC0(GIT_ERROR_THREAD, "unable to lock mwindow mutex");
			return;
		}

		w->inuse_cnt--;
		FUNC2(&git__mwindow_mutex);
		*window = NULL;
	}
}