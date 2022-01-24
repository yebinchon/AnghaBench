#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIG_FILENAME_GLOBAL ; 
 char const GIT_PATH_LIST_SEPARATOR ; 
 int /*<<< orphan*/  GIT_SYSDIR_GLOBAL ; 
 char* FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char const*,size_t) ; 
 scalar_t__ FUNC4 (TYPE_1__ const**,int /*<<< orphan*/ ) ; 

int FUNC5(git_buf *buf)
{
	const git_buf *paths;
	const char *sep, *start;

	if (FUNC4(&paths, GIT_SYSDIR_GLOBAL) < 0)
		return -1;

	/* no paths, so give up */
	if (!paths || !FUNC2(paths))
		return -1;

	/* find unescaped separator or end of string */
	for (sep = start = FUNC0(paths); *sep; ++sep) {
		if (*sep == GIT_PATH_LIST_SEPARATOR &&
			(sep <= start || sep[-1] != '\\'))
			break;
	}

	if (FUNC3(buf, start, (size_t)(sep - start)) < 0)
		return -1;

	return FUNC1(buf, buf->ptr, GIT_CONFIG_FILENAME_GLOBAL);
}