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
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_diff_options ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int FUNC0 (char const*,size_t,char const*,size_t,char const*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const*,size_t,char*,char const*,size_t,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(
	const char *old,
	size_t old_len,
	const char *new,
	size_t new_len,
	const char *patchfile,
	const git_diff_options *diff_opts,
	const char *filename_expected,
	unsigned int mode_expected)
{
	git_patch *patch_fromdiff;
	git_buf validated = GIT_BUF_INIT;
	int error;

	FUNC2(FUNC5(&patch_fromdiff,
		old, old_len, "file.txt",
		new, new_len, "file.txt",
		diff_opts));
	FUNC2(FUNC6(&validated, patch_fromdiff));

	FUNC1(patchfile, validated.ptr);

	error = FUNC0(old, old_len, new, new_len, patchfile, filename_expected, mode_expected);

	FUNC3(&validated);
	FUNC4(patch_fromdiff);

	return error;
}