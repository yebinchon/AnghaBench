#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_7__ {int /*<<< orphan*/  remove_conflicts; } ;
typedef  TYPE_2__ checkout_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(
	const git_index_entry *ancestor,
	const git_index_entry *ours,
	const git_index_entry *theirs,
	void *payload)
{
	checkout_data *data = payload;
	const char *name;

	FUNC2(ancestor || ours || theirs);

	if (ancestor)
		name = FUNC3(ancestor->path);
	else if (ours)
		name = FUNC3(ours->path);
	else if (theirs)
		name = FUNC3(theirs->path);
	else
		FUNC1();

	FUNC0(name);

	return FUNC4(&data->remove_conflicts, (char *)name);
}