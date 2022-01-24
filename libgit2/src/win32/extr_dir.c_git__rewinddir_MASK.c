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
typedef  int /*<<< orphan*/  git_win32_path ;
struct TYPE_3__ {int first; int /*<<< orphan*/  dir; int /*<<< orphan*/  h; int /*<<< orphan*/  f; } ;
typedef  TYPE_1__ git__DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(git__DIR *d)
{
	git_win32_path filter_w;

	if (!d)
		return;

	if (d->h != INVALID_HANDLE_VALUE) {
		FUNC0(d->h);
		d->h = INVALID_HANDLE_VALUE;
		d->first = 0;
	}

	if (!FUNC3(filter_w, d->dir))
		return;

	d->h = FUNC1(filter_w, &d->f);

	if (d->h == INVALID_HANDLE_VALUE)
		FUNC2(GIT_ERROR_OS, "could not open directory '%s'", d->dir);
	else
		d->first = 1;
}