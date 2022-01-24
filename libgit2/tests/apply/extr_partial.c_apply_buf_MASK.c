#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_diff_options ;
struct TYPE_8__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_9__ {void* payload; int /*<<< orphan*/  hunk_cb; } ;
typedef  TYPE_2__ git_apply_options ;
typedef  int /*<<< orphan*/  git_apply_hunk_cb ;

/* Variables and functions */
 TYPE_2__ GIT_APPLY_OPTIONS_INIT ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (TYPE_1__*,char**,unsigned int*,char const*,size_t,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char const*,size_t,char const*,char const*,size_t,char const*,int /*<<< orphan*/  const*) ; 
 size_t FUNC8 (char const*) ; 

__attribute__((used)) static int FUNC9(
	const char *old,
	const char *oldname,
	const char *new,
	const char *newname,
	const char *expected,
	const git_diff_options *diff_opts,
	git_apply_hunk_cb hunk_cb,
	void *payload)
{
	git_patch *patch;
	git_buf result = GIT_BUF_INIT;
	git_buf patchbuf = GIT_BUF_INIT;
	git_apply_options opts = GIT_APPLY_OPTIONS_INIT;
	char *filename;
	unsigned int mode;
	int error;
	size_t oldsize = FUNC8(old);
	size_t newsize = FUNC8(new);

	opts.hunk_cb = hunk_cb;
	opts.payload = payload;

	FUNC2(FUNC7(&patch, old, oldsize, oldname, new, newsize, newname, diff_opts));
	if ((error = FUNC4(&result, &filename, &mode, old, oldsize, patch, &opts)) == 0) {
		FUNC1(expected, result.ptr);
		FUNC1(newname, filename);
		FUNC0(0100644, mode);
	}

	FUNC3(filename);
	FUNC5(&result);
	FUNC5(&patchbuf);
	FUNC6(patch);

	return error;
}