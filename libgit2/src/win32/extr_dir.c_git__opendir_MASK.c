#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_win32_path ;
struct TYPE_5__ {scalar_t__ h; int first; int /*<<< orphan*/  f; int /*<<< orphan*/  dir; } ;
typedef  TYPE_1__ git__DIR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 TYPE_1__* FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC7 (char const*) ; 

git__DIR *FUNC8(const char *dir)
{
	git_win32_path filter_w;
	git__DIR *new = NULL;
	size_t dirlen, alloclen;

	if (!dir || !FUNC5(filter_w, dir))
		return NULL;

	dirlen = FUNC7(dir);

	if (FUNC1(&alloclen, sizeof(*new), dirlen) ||
		FUNC1(&alloclen, alloclen, 1) ||
		!(new = FUNC2(1, alloclen)))
		return NULL;

	FUNC6(new->dir, dir, dirlen);

	new->h = FUNC0(filter_w, &new->f);

	if (new->h == INVALID_HANDLE_VALUE) {
		FUNC4(GIT_ERROR_OS, "could not open directory '%s'", dir);
		FUNC3(new);
		return NULL;
	}

	new->first = 1;
	return new;
}