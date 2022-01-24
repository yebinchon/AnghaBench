#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  TEST_REPO_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*,...) ; 

__attribute__((used)) static void FUNC4(char *files[])
{
	char *filename;
	git_buf path = GIT_BUF_INIT, content = GIT_BUF_INIT;
	size_t i;

	for (i = 0, filename = files[i]; filename; filename = files[++i]) {
		FUNC1(&path);
		FUNC1(&content);

		FUNC3(&path, "%s/%s", TEST_REPO_PATH, filename);
		FUNC3(&content, "This is a dirty file in the working directory!\n\n"
			"It will not be staged!  Its filename is %s.\n", filename);

		FUNC0(path.ptr, content.ptr);
	}

	FUNC2(&path);
	FUNC2(&content);
}