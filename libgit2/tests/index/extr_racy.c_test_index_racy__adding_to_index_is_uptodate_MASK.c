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
struct TYPE_4__ {int flags_extended; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int GIT_INDEX_ENTRY_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(void)
{
	git_index *index;
	const git_index_entry *entry;

	FUNC7();

	FUNC2(FUNC6(&index, g_repo));

	/* ensure that they're all uptodate */
	FUNC0((entry = FUNC4(index, "A", 0)));
	FUNC1(GIT_INDEX_ENTRY_UPTODATE, (entry->flags_extended & GIT_INDEX_ENTRY_UPTODATE));

	FUNC0((entry = FUNC4(index, "B", 0)));
	FUNC1(GIT_INDEX_ENTRY_UPTODATE, (entry->flags_extended & GIT_INDEX_ENTRY_UPTODATE));

	FUNC0((entry = FUNC4(index, "C", 0)));
	FUNC1(GIT_INDEX_ENTRY_UPTODATE, (entry->flags_extended & GIT_INDEX_ENTRY_UPTODATE));

	FUNC2(FUNC5(index));

	FUNC3(index);
}