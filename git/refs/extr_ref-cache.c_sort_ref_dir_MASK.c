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
struct ref_entry {int dummy; } ;
struct ref_dir {int sorted; int nr; struct ref_entry** entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref_entry**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ref_entry*) ; 
 scalar_t__ FUNC2 (struct ref_entry*,struct ref_entry*) ; 
 int /*<<< orphan*/  ref_entry_cmp ; 

__attribute__((used)) static void FUNC3(struct ref_dir *dir)
{
	int i, j;
	struct ref_entry *last = NULL;

	/*
	 * This check also prevents passing a zero-length array to qsort(),
	 * which is a problem on some platforms.
	 */
	if (dir->sorted == dir->nr)
		return;

	FUNC0(dir->entries, dir->nr, ref_entry_cmp);

	/* Remove any duplicates: */
	for (i = 0, j = 0; j < dir->nr; j++) {
		struct ref_entry *entry = dir->entries[j];
		if (last && FUNC2(last, entry))
			FUNC1(entry);
		else
			last = dir->entries[i++] = entry;
	}
	dir->sorted = dir->nr = i;
}