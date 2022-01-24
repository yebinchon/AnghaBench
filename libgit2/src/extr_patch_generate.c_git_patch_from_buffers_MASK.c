#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_diff_options ;
typedef  int /*<<< orphan*/  git_diff_file_content_src ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*,size_t,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC2(
	git_patch **out,
	const void *old_buf,
	size_t old_len,
	const char *old_path,
	const void *new_buf,
	size_t new_len,
	const char *new_path,
	const git_diff_options *opts)
{
	git_diff_file_content_src osrc =
		FUNC0(old_buf, old_len, old_path);
	git_diff_file_content_src nsrc =
		FUNC0(new_buf, new_len, new_path);
	return FUNC1(out, &osrc, &nsrc, opts);
}