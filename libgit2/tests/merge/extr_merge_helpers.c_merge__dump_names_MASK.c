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
struct TYPE_3__ {char* ancestor; char* ours; char* theirs; } ;
typedef  TYPE_1__ git_index_name_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void FUNC3(git_index *index)
{
	size_t i;
	const git_index_name_entry *conflict_name;

	for (i = 0; i < FUNC0(index); i++) {
		conflict_name = FUNC1(index, i);

		FUNC2("%s %s %s\n", conflict_name->ancestor, conflict_name->ours, conflict_name->theirs);
	}
	FUNC2("\n");
}