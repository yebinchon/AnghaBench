#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  size_t git_sysdir_t ;
struct TYPE_13__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_14__ {char const* ptr; } ;
struct TYPE_15__ {TYPE_2__ buf; int /*<<< orphan*/  (* guess ) (TYPE_2__*) ;} ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_PATH_LIST_SEPARATOR ; 
 int /*<<< orphan*/  PATH_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_3__* git_sysdir__dirs ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

int FUNC12(git_sysdir_t which, const char *search_path)
{
	const char *expand_path = NULL;
	git_buf merge = GIT_BUF_INIT;

	FUNC0(FUNC8(which));

	if (search_path != NULL)
		expand_path = FUNC10(search_path, PATH_MAGIC);

	/* reset the default if this path has been cleared */
	if (!search_path)
		git_sysdir__dirs[which].guess(&git_sysdir__dirs[which].buf);

	/* if $PATH is not referenced, then just set the path */
	if (!expand_path) {
		if (search_path)
			FUNC6(&git_sysdir__dirs[which].buf, search_path);

		goto done;
	}

	/* otherwise set to join(before $PATH, old value, after $PATH) */
	if (expand_path > search_path)
		FUNC5(&merge, search_path, expand_path - search_path);

	if (FUNC3(&git_sysdir__dirs[which].buf))
		FUNC2(&merge, GIT_PATH_LIST_SEPARATOR,
			merge.ptr, git_sysdir__dirs[which].buf.ptr);

	expand_path += FUNC9(PATH_MAGIC);
	if (*expand_path)
		FUNC2(&merge, GIT_PATH_LIST_SEPARATOR, merge.ptr, expand_path);

	FUNC7(&git_sysdir__dirs[which].buf, &merge);
	FUNC1(&merge);

done:
	if (FUNC4(&git_sysdir__dirs[which].buf))
		return -1;

	return 0;
}