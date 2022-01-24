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
struct ref_entry {int flag; int /*<<< orphan*/  name; } ;
struct ref_dir {int nr; struct ref_entry** entries; } ;

/* Variables and functions */
#define  PREFIX_CONTAINS_DIR 130 
#define  PREFIX_EXCLUDES_DIR 129 
#define  PREFIX_WITHIN_DIR 128 
 int REF_DIR ; 
 struct ref_dir* FUNC0 (struct ref_entry*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC2(struct ref_dir *dir, const char *prefix)
{
	/*
	 * The hard work of loading loose refs is done by get_ref_dir(), so we
	 * just need to recurse through all of the sub-directories. We do not
	 * even need to care about sorting, as traversal order does not matter
	 * to us.
	 */
	int i;
	for (i = 0; i < dir->nr; i++) {
		struct ref_entry *entry = dir->entries[i];
		if (!(entry->flag & REF_DIR)) {
			/* Not a directory; no need to recurse. */
		} else if (!prefix) {
			/* Recurse in any case: */
			FUNC2(FUNC0(entry), NULL);
		} else {
			switch (FUNC1(entry->name, prefix)) {
			case PREFIX_CONTAINS_DIR:
				/*
				 * Recurse, and from here down we
				 * don't have to check the prefix
				 * anymore:
				 */
				FUNC2(FUNC0(entry), NULL);
				break;
			case PREFIX_WITHIN_DIR:
				FUNC2(FUNC0(entry), prefix);
				break;
			case PREFIX_EXCLUDES_DIR:
				/* No need to prime this directory. */
				break;
			}
		}
	}
}