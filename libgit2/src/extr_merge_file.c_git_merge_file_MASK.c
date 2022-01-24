#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_merge_file_result ;
typedef  int /*<<< orphan*/  git_merge_file_options ;
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_merge_file_input ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/  const*) ; 

int FUNC4(
	git_merge_file_result *out,
	const git_merge_file_input *ancestor,
	const git_merge_file_input *ours,
	const git_merge_file_input *theirs,
	const git_merge_file_options *options)
{
	git_merge_file_input inputs[3] = { {0} };

	FUNC0(out && ours && theirs);

	FUNC2(out, 0x0, sizeof(git_merge_file_result));

	if (ancestor)
		ancestor = FUNC1(&inputs[0], ancestor);

	ours = FUNC1(&inputs[1], ours);
	theirs = FUNC1(&inputs[2], theirs);

	return FUNC3(out, ancestor, ours, theirs, options);
}