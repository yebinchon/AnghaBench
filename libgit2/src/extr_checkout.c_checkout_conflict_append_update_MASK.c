#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_index_entry ;
struct TYPE_9__ {int /*<<< orphan*/  update_conflicts; int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ checkout_data ;
struct TYPE_10__ {int /*<<< orphan*/  const* theirs; int /*<<< orphan*/  const* ours; int /*<<< orphan*/  const* ancestor; } ;
typedef  TYPE_2__ checkout_conflictdata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(
	const git_index_entry *ancestor,
	const git_index_entry *ours,
	const git_index_entry *theirs,
	void *payload)
{
	checkout_data *data = payload;
	checkout_conflictdata *conflict;
	int error;

	conflict = FUNC3(1, sizeof(checkout_conflictdata));
	FUNC0(conflict);

	conflict->ancestor = ancestor;
	conflict->ours = ours;
	conflict->theirs = theirs;

	if ((error = FUNC2(conflict)) < 0 ||
		(error = FUNC1(data->repo, conflict)) < 0)
	{
		FUNC4(conflict);
		return error;
	}

	if (FUNC5(&data->update_conflicts, conflict))
		return -1;

	return 0;
}