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
typedef  int /*<<< orphan*/  const git_merge_file_options ;

/* Variables and functions */
 int /*<<< orphan*/  const GIT_MERGE_FILE_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC1(
	git_merge_file_options *out,
	const git_merge_file_options *given_opts)
{
	if (given_opts)
		FUNC0(out, given_opts, sizeof(git_merge_file_options));
	else {
		git_merge_file_options default_opts = GIT_MERGE_FILE_OPTIONS_INIT;
		FUNC0(out, &default_opts, sizeof(git_merge_file_options));
	}
}