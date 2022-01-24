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
struct TYPE_5__ {int /*<<< orphan*/  orig_signature; int /*<<< orphan*/  final_signature; int /*<<< orphan*/  boundary; int /*<<< orphan*/  final_commit_id; int /*<<< orphan*/  orig_commit_id; int /*<<< orphan*/  orig_path; int /*<<< orphan*/  orig_start_line_number; int /*<<< orphan*/  lines_in_hunk; int /*<<< orphan*/  final_start_line_number; } ;
typedef  TYPE_1__ git_blame_hunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static git_blame_hunk* FUNC3(git_blame_hunk *hunk)
{
	git_blame_hunk *newhunk = FUNC2(
			hunk->final_start_line_number,
			hunk->lines_in_hunk,
			hunk->orig_start_line_number,
			hunk->orig_path);

	if (!newhunk)
		return NULL;

	FUNC0(&newhunk->orig_commit_id, &hunk->orig_commit_id);
	FUNC0(&newhunk->final_commit_id, &hunk->final_commit_id);
	newhunk->boundary = hunk->boundary;
	FUNC1(&newhunk->final_signature, hunk->final_signature);
	FUNC1(&newhunk->orig_signature, hunk->orig_signature);
	return newhunk;
}