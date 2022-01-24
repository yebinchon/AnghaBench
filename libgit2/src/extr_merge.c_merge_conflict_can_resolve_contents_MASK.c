#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  path; int /*<<< orphan*/  mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  path; int /*<<< orphan*/  mode; } ;
struct TYPE_6__ {scalar_t__ type; int our_status; int their_status; TYPE_4__ their_entry; TYPE_1__ ancestor_entry; TYPE_4__ our_entry; } ;
typedef  TYPE_2__ git_merge_diff ;

/* Variables and functions */
 int GIT_DELTA_RENAMED ; 
 scalar_t__ GIT_MERGE_DIFF_BOTH_RENAMED_2_TO_1 ; 
 scalar_t__ GIT_MERGE_DIFF_DIRECTORY_FILE ; 
 scalar_t__ GIT_MERGE_DIFF_RENAMED_ADDED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(
	const git_merge_diff *conflict)
{
	if (!FUNC0(conflict->our_entry) ||
		!FUNC0(conflict->their_entry))
		return false;

	/* Reject D/F conflicts */
	if (conflict->type == GIT_MERGE_DIFF_DIRECTORY_FILE)
		return false;

	/* Reject submodules. */
	if (FUNC1(conflict->ancestor_entry.mode) ||
		FUNC1(conflict->our_entry.mode) ||
		FUNC1(conflict->their_entry.mode))
		return false;

	/* Reject link/file conflicts. */
	if ((FUNC2(conflict->ancestor_entry.mode) ^
			FUNC2(conflict->our_entry.mode)) ||
		(FUNC2(conflict->ancestor_entry.mode) ^
			FUNC2(conflict->their_entry.mode)))
		return false;

	/* Reject name conflicts */
	if (conflict->type == GIT_MERGE_DIFF_BOTH_RENAMED_2_TO_1 ||
		conflict->type == GIT_MERGE_DIFF_RENAMED_ADDED)
		return false;

	if ((conflict->our_status & GIT_DELTA_RENAMED) == GIT_DELTA_RENAMED &&
		(conflict->their_status & GIT_DELTA_RENAMED) == GIT_DELTA_RENAMED &&
		FUNC3(conflict->ancestor_entry.path, conflict->their_entry.path) != 0)
		return false;

	return true;
}