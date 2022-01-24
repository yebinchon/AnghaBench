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
typedef  int /*<<< orphan*/  u32 ;
struct rmid_entry {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 struct rmid_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rmid_entry*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rdtgroup_mutex ; 
 int /*<<< orphan*/  rmid_free_lru ; 

void FUNC5(u32 rmid)
{
	struct rmid_entry *entry;

	if (!rmid)
		return;

	FUNC4(&rdtgroup_mutex);

	entry = FUNC0(rmid);

	if (FUNC2())
		FUNC1(entry);
	else
		FUNC3(&entry->list, &rmid_free_lru);
}