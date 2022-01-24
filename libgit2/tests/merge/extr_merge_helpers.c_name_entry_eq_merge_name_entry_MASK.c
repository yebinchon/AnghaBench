#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct merge_name_entry {int /*<<< orphan*/  their_path; int /*<<< orphan*/  our_path; int /*<<< orphan*/  ancestor_path; } ;
struct TYPE_3__ {int /*<<< orphan*/  theirs; int /*<<< orphan*/  ours; int /*<<< orphan*/  ancestor; } ;
typedef  TYPE_1__ git_index_name_entry ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const struct merge_name_entry *expected, const git_index_name_entry *actual)
{
	if (FUNC0(expected->ancestor_path, actual->ancestor) == 0 ||
		FUNC0(expected->our_path, actual->ours) == 0 ||
		FUNC0(expected->their_path, actual->theirs) == 0)
		return 0;

	return 1;
}