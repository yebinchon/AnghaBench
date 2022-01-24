#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  path; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_idx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
	const char *sm_name = "not-submodule";
	const char *sm_head = "68e92c611b80ee1ed8f38314ff9577f0d15b2444";
	const git_index_entry *entry;

	FUNC2(FUNC3(g_idx, sm_name));

	FUNC0(entry = FUNC4(g_idx, sm_name, 0));
	FUNC1(sm_head, FUNC5(&entry->id));
	FUNC1(sm_name, entry->path);
}