#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_7__ {scalar_t__ ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 char const* GIT_ALTERNATES_FILE ; 
 int GIT_ALTERNATES_MAX_DEPTH ; 
 TYPE_1__ GIT_BUF_INIT ; 
 char* FUNC0 (char**,char*) ; 
 char* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,char const*,char const*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int,int) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(git_odb *odb, const char *objects_dir, int alternate_depth)
{
	git_buf alternates_path = GIT_BUF_INIT;
	git_buf alternates_buf = GIT_BUF_INIT;
	char *buffer;
	const char *alternate;
	int result = 0;

	/* Git reports an error, we just ignore anything deeper */
	if (alternate_depth > GIT_ALTERNATES_MAX_DEPTH)
		return 0;

	if (FUNC3(&alternates_path, objects_dir, GIT_ALTERNATES_FILE) < 0)
		return -1;

	if (FUNC6(alternates_path.ptr) == false) {
		FUNC2(&alternates_path);
		return 0;
	}

	if (FUNC4(&alternates_buf, alternates_path.ptr) < 0) {
		FUNC2(&alternates_path);
		return -1;
	}

	buffer = (char *)alternates_buf.ptr;

	/* add each alternate as a new backend; one alternate per line */
	while ((alternate = FUNC0(&buffer, "\r\n")) != NULL) {
		if (*alternate == '\0' || *alternate == '#')
			continue;

		/*
		 * Relative path: build based on the current `objects`
		 * folder. However, relative paths are only allowed in
		 * the current repository.
		 */
		if (*alternate == '.' && !alternate_depth) {
			if ((result = FUNC3(&alternates_path, objects_dir, alternate)) < 0)
				break;
			alternate = FUNC1(&alternates_path);
		}

		if ((result = FUNC5(odb, alternate, true, alternate_depth + 1)) < 0)
			break;
	}

	FUNC2(&alternates_path);
	FUNC2(&alternates_buf);

	return result;
}