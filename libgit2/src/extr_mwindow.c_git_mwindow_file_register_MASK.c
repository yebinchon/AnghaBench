#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_mwindow_file ;
struct TYPE_6__ {scalar_t__ length; } ;
struct TYPE_5__ {TYPE_3__ windowfiles; } ;
typedef  TYPE_1__ git_mwindow_ctl ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_THREAD ; 
 int /*<<< orphan*/  git__mwindow_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_1__ mem_ctl ; 

int FUNC5(git_mwindow_file *mwf)
{
	git_mwindow_ctl *ctl = &mem_ctl;
	int ret;

	if (FUNC1(&git__mwindow_mutex)) {
		FUNC0(GIT_ERROR_THREAD, "unable to lock mwindow mutex");
		return -1;
	}

	if (ctl->windowfiles.length == 0 &&
	    FUNC3(&ctl->windowfiles, 8, NULL) < 0) {
		FUNC2(&git__mwindow_mutex);
		return -1;
	}

	ret = FUNC4(&ctl->windowfiles, mwf);
	FUNC2(&git__mwindow_mutex);

	return ret;
}