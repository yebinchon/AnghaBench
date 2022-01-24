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
struct TYPE_3__ {char* path; int* mode; int /*<<< orphan*/ * oid; } ;
typedef  TYPE_1__ git_index_reuc_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void FUNC4(git_index *index)
{
	size_t i;
	const git_index_reuc_entry *reuc;

	FUNC3 ("\nREUC:\n");
	for (i = 0; i < FUNC0(index); i++) {
		reuc = FUNC1(index, i);

		FUNC3("%s ", reuc->path);
		FUNC3("%o ", reuc->mode[0]);
		FUNC3("%s\n", FUNC2(&reuc->oid[0]));
		FUNC3("          %o ", reuc->mode[1]);
		FUNC3("          %s\n", FUNC2(&reuc->oid[1]));
		FUNC3("          %o ", reuc->mode[2]);
		FUNC3("          %s ", FUNC2(&reuc->oid[2]));
		FUNC3("\n");
	}
	FUNC3("\n");
}