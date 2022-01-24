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
typedef  int /*<<< orphan*/  git_merge_file_result ;
typedef  int /*<<< orphan*/  git_merge_file_options ;
typedef  int /*<<< orphan*/  git_merge_file_input ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(
	git_merge_file_result *out,
	const git_merge_file_input *ancestor,
	const git_merge_file_input *ours,
	const git_merge_file_input *theirs,
	const git_merge_file_options *given_opts)
{
	if (FUNC1(ancestor) ||
		FUNC1(ours) ||
		FUNC1(theirs))
		return FUNC0(out, ours, theirs, given_opts);

	return FUNC2(out, ancestor, ours, theirs, given_opts);
}