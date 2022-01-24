#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ git_strarray ;
struct TYPE_12__ {char* ptr; scalar_t__ size; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 scalar_t__ FUNC0 (char const) ; 
 char* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

char *FUNC6(const git_strarray *pathspec)
{
	git_buf prefix = GIT_BUF_INIT;
	const char *scan;

	if (!pathspec || !pathspec->count ||
		FUNC3(&prefix, pathspec) < 0)
		return NULL;

	/* diff prefix will only be leading non-wildcards */
	for (scan = prefix.ptr; *scan; ++scan) {
		if (FUNC0(*scan) &&
			(scan == prefix.ptr || (*(scan - 1) != '\\')))
			break;
	}
	FUNC5(&prefix, scan - prefix.ptr);

	if (prefix.size <= 0) {
		FUNC2(&prefix);
		return NULL;
	}

	FUNC4(&prefix);

	return FUNC1(&prefix);
}