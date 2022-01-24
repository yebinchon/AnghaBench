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
struct ref_entry {int flag; } ;
struct ref_dir {struct ref_entry** entries; } ;

/* Variables and functions */
 int REF_DIR ; 
 struct ref_dir* FUNC0 (struct ref_dir*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ref_dir*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

struct ref_entry *FUNC3(struct ref_dir *dir, const char *refname)
{
	int entry_index;
	struct ref_entry *entry;
	dir = FUNC0(dir, refname, 0);
	if (!dir)
		return NULL;
	entry_index = FUNC1(dir, refname, FUNC2(refname));
	if (entry_index == -1)
		return NULL;
	entry = dir->entries[entry_index];
	return (entry->flag & REF_DIR) ? NULL : entry;
}