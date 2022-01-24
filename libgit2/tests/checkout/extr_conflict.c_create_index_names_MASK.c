#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct checkout_name_entry {int /*<<< orphan*/ * theirs; int /*<<< orphan*/ * ours; int /*<<< orphan*/ * ancestor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_index ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct checkout_name_entry *entries, size_t entries_len)
{
	size_t i;

	for (i = 0; i < entries_len; i++) {
		FUNC0(FUNC1(g_index,
			FUNC2(entries[i].ancestor) == 0 ? NULL : entries[i].ancestor,
			FUNC2(entries[i].ours) == 0 ? NULL : entries[i].ours,
			FUNC2(entries[i].theirs) == 0 ? NULL : entries[i].theirs));
	}
}