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
struct ref_dir {int nr; int sorted; struct ref_entry** entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref_entry**,struct ref_entry**,int) ; 
 struct ref_dir* FUNC1 (struct ref_dir*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ref_entry*) ; 
 int FUNC4 (struct ref_dir*,char const*,int) ; 
 int FUNC5 (char const*) ; 
 char* FUNC6 (char const*,int) ; 

int FUNC7(struct ref_dir *dir, const char *refname)
{
	int refname_len = FUNC5(refname);
	int entry_index;
	struct ref_entry *entry;
	int is_dir = refname[refname_len - 1] == '/';
	if (is_dir) {
		/*
		 * refname represents a reference directory.  Remove
		 * the trailing slash; otherwise we will get the
		 * directory *representing* refname rather than the
		 * one *containing* it.
		 */
		char *dirname = FUNC6(refname, refname_len - 1);
		dir = FUNC1(dir, dirname, 0);
		FUNC2(dirname);
	} else {
		dir = FUNC1(dir, refname, 0);
	}
	if (!dir)
		return -1;
	entry_index = FUNC4(dir, refname, refname_len);
	if (entry_index == -1)
		return -1;
	entry = dir->entries[entry_index];

	FUNC0(&dir->entries[entry_index],
		   &dir->entries[entry_index + 1], dir->nr - entry_index - 1);
	dir->nr--;
	if (dir->sorted > entry_index)
		dir->sorted--;
	FUNC3(entry);
	return dir->nr;
}