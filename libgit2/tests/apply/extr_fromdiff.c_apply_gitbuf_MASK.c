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
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_diff_options ;
struct TYPE_8__ {char* ptr; unsigned int size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (TYPE_1__*,char**,unsigned int*,char*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char*,unsigned int,char const*,char*,unsigned int,char const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(
	const git_buf *old,
	const char *oldname,
	const git_buf *new,
	const char *newname,
	const char *patch_expected,
	const git_diff_options *diff_opts)
{
	git_patch *patch;
	git_buf result = GIT_BUF_INIT;
	git_buf patchbuf = GIT_BUF_INIT;
	char *filename;
	unsigned int mode;
	int error;

	FUNC3(FUNC8(&patch,
		old ? old->ptr : NULL, old ? old->size : 0,
		oldname,
		new ? new->ptr : NULL, new ? new->size : 0,
		newname,
		diff_opts));

	if (patch_expected) {
		FUNC3(FUNC9(&patchbuf, patch));
		FUNC2(patch_expected, patchbuf.ptr);
	}

	error = FUNC5(&result, &filename, &mode, old ? old->ptr : NULL, old ? old->size : 0, patch, NULL);

	if (error == 0 && new == NULL) {
		FUNC0(0, result.size);
		FUNC1(NULL, filename);
		FUNC0(0, mode);
	}
	else if (error == 0) {
		FUNC2(new->ptr, result.ptr);
		FUNC2(newname ? newname : oldname, filename);
		FUNC0(0100644, mode);
	}

	FUNC4(filename);
	FUNC6(&result);
	FUNC6(&patchbuf);
	FUNC7(patch);

	return error;
}