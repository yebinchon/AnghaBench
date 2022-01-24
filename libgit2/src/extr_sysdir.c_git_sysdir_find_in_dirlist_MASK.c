#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_sysdir_t ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 char const GIT_PATH_LIST_SEPARATOR ; 
 char* FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(
	git_buf *path,
	const char *name,
	git_sysdir_t which,
	const char *label)
{
	size_t len;
	const char *scan, *next = NULL;
	const git_buf *syspath;

	FUNC0(FUNC8(&syspath, which));
	if (!syspath || !FUNC4(syspath))
		goto done;

	for (scan = FUNC1(syspath); scan; scan = next) {
		/* find unescaped separator or end of string */
		for (next = scan; *next; ++next) {
			if (*next == GIT_PATH_LIST_SEPARATOR &&
				(next <= scan || next[-1] != '\\'))
				break;
		}

		len = (size_t)(next - scan);
		next = (*next ? next + 1 : NULL);
		if (!len)
			continue;

		FUNC0(FUNC5(path, scan, len));
		if (name)
			FUNC0(FUNC3(path, path->ptr, name));

		if (FUNC7(path->ptr))
			return 0;
	}

done:
	FUNC2(path);
	FUNC6(GIT_ERROR_OS, "the %s file '%s' doesn't exist", label, name);
	return GIT_ENOTFOUND;
}