#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__* windows; } ;
typedef  TYPE_1__ git_mwindow_file ;
struct TYPE_16__ {size_t length; int /*<<< orphan*/ * contents; } ;
struct TYPE_14__ {int /*<<< orphan*/  open_windows; int /*<<< orphan*/  mapped; TYPE_5__ windowfiles; } ;
typedef  TYPE_2__ git_mwindow_ctl ;
struct TYPE_12__ {scalar_t__ len; } ;
struct TYPE_15__ {scalar_t__ inuse_cnt; struct TYPE_15__* next; TYPE_10__ window_map; } ;
typedef  TYPE_3__ git_mwindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 TYPE_1__* FUNC4 (TYPE_5__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,size_t) ; 
 TYPE_2__ mem_ctl ; 

void FUNC6(git_mwindow_file *mwf)
{
	git_mwindow_ctl *ctl = &mem_ctl;
	size_t i;

	/*
	 * Remove these windows from the global list
	 */
	for (i = 0; i < ctl->windowfiles.length; ++i){
		if (FUNC4(&ctl->windowfiles, i) == mwf) {
			FUNC5(&ctl->windowfiles, i);
			break;
		}
	}

	if (ctl->windowfiles.length == 0) {
		FUNC3(&ctl->windowfiles);
		ctl->windowfiles.contents = NULL;
	}

	while (mwf->windows) {
		git_mwindow *w = mwf->windows;
		FUNC0(w->inuse_cnt == 0);

		ctl->mapped -= w->window_map.len;
		ctl->open_windows--;

		FUNC2(&w->window_map);

		mwf->windows = w->next;
		FUNC1(w);
	}
}