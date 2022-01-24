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
struct ref_dir {struct ref_entry** entries; int /*<<< orphan*/  cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref_dir*,struct ref_entry*) ; 
 struct ref_entry* FUNC1 (int /*<<< orphan*/ ,char const*,size_t,int /*<<< orphan*/ ) ; 
 struct ref_dir* FUNC2 (struct ref_entry*) ; 
 int FUNC3 (struct ref_dir*,char const*,size_t) ; 

__attribute__((used)) static struct ref_dir *FUNC4(struct ref_dir *dir,
					 const char *subdirname, size_t len,
					 int mkdir)
{
	int entry_index = FUNC3(dir, subdirname, len);
	struct ref_entry *entry;
	if (entry_index == -1) {
		if (!mkdir)
			return NULL;
		/*
		 * Since dir is complete, the absence of a subdir
		 * means that the subdir really doesn't exist;
		 * therefore, create an empty record for it but mark
		 * the record complete.
		 */
		entry = FUNC1(dir->cache, subdirname, len, 0);
		FUNC0(dir, entry);
	} else {
		entry = dir->entries[entry_index];
	}
	return FUNC2(entry);
}