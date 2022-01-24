#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int git_off_t ;
struct TYPE_12__ {TYPE_4__* windows; int /*<<< orphan*/  size; int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ git_mwindow_file ;
struct TYPE_13__ {int /*<<< orphan*/  used_ctr; } ;
typedef  TYPE_3__ git_mwindow_ctl ;
struct TYPE_11__ {int len; scalar_t__ data; } ;
struct TYPE_14__ {int offset; TYPE_1__ window_map; int /*<<< orphan*/  inuse_cnt; scalar_t__ last_used; struct TYPE_14__* next; } ;
typedef  TYPE_4__ git_mwindow ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_THREAD ; 
 int /*<<< orphan*/  git__mwindow_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int) ; 
 TYPE_3__ mem_ctl ; 
 TYPE_4__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

unsigned char *FUNC5(
	git_mwindow_file *mwf,
	git_mwindow **cursor,
	git_off_t offset,
	size_t extra,
	unsigned int *left)
{
	git_mwindow_ctl *ctl = &mem_ctl;
	git_mwindow *w = *cursor;

	if (FUNC1(&git__mwindow_mutex)) {
		FUNC0(GIT_ERROR_THREAD, "unable to lock mwindow mutex");
		return NULL;
	}

	if (!w || !(FUNC3(w, offset) && FUNC3(w, offset + extra))) {
		if (w) {
			w->inuse_cnt--;
		}

		for (w = mwf->windows; w; w = w->next) {
			if (FUNC3(w, offset) &&
				FUNC3(w, offset + extra))
				break;
		}

		/*
		 * If there isn't a suitable window, we need to create a new
		 * one.
		 */
		if (!w) {
			w = FUNC4(mwf, mwf->fd, mwf->size, offset);
			if (w == NULL) {
				FUNC2(&git__mwindow_mutex);
				return NULL;
			}
			w->next = mwf->windows;
			mwf->windows = w;
		}
	}

	/* If we changed w, store it in the cursor */
	if (w != *cursor) {
		w->last_used = ctl->used_ctr++;
		w->inuse_cnt++;
		*cursor = w;
	}

	offset -= w->offset;

	if (left)
		*left = (unsigned int)(w->window_map.len - offset);

	FUNC2(&git__mwindow_mutex);
	return (unsigned char *) w->window_map.data + offset;
}