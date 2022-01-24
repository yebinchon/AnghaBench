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
struct memtrace_entry {int start; int size; int nid; struct dentry* dir; int /*<<< orphan*/  name; int /*<<< orphan*/  mem; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,struct memtrace_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct memtrace_entry* memtrace_array ; 
 int memtrace_array_nr ; 
 int /*<<< orphan*/  memtrace_debugfs_dir ; 
 int /*<<< orphan*/  memtrace_fops ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static int FUNC6(void)
{
	int ret = 0;
	int i;

	for (i = 0; i < memtrace_array_nr; i++) {
		struct dentry *dir;
		struct memtrace_entry *ent = &memtrace_array[i];

		ent->mem = FUNC3(ent->start, ent->size);
		/* Warn but continue on */
		if (!ent->mem) {
			FUNC4("Failed to map trace memory at 0x%llx\n",
				 ent->start);
			ret = -1;
			continue;
		}

		FUNC5(ent->name, 16, "%08x", ent->nid);
		dir = FUNC0(ent->name, memtrace_debugfs_dir);
		if (!dir) {
			FUNC4("Failed to create debugfs directory for node %d\n",
				ent->nid);
			return -1;
		}

		ent->dir = dir;
		FUNC1("trace", 0400, dir, ent, &memtrace_fops);
		FUNC2("start", 0400, dir, &ent->start);
		FUNC2("size", 0400, dir, &ent->size);
	}

	return ret;
}