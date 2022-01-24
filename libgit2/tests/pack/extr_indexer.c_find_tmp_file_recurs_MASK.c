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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int (*) (void*,TYPE_1__*),void*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(void *opaque, git_buf *path)
{
	int error = 0;
	git_buf *first_tmp_file = opaque;
	struct stat st;

	if ((error = FUNC4(path->ptr, &st)) < 0)
		return error;

	if (FUNC0(st.st_mode))
		return FUNC3(path, 0, find_tmp_file_recurs, opaque);

	/* This is the template that's used in git_futils_mktmp. */
	if (FUNC5(FUNC1(path), "_git2_") != NULL)
		return FUNC2(first_tmp_file, FUNC1(path));

	return 0;
}