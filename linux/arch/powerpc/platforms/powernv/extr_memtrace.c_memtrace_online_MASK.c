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
struct memtrace_entry {scalar_t__ nid; scalar_t__ start; scalar_t__ size; int /*<<< orphan*/  dir; scalar_t__ mem; } ;

/* Variables and functions */
 scalar_t__ NUMA_NO_NODE ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct memtrace_entry*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  memhp_auto_online ; 
 struct memtrace_entry* memtrace_array ; 
 int memtrace_array_nr ; 
 scalar_t__ memtrace_size ; 
 int /*<<< orphan*/  online_mem_block ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(void)
{
	int i, ret = 0;
	struct memtrace_entry *ent;

	for (i = memtrace_array_nr - 1; i >= 0; i--) {
		ent = &memtrace_array[i];

		/* We have onlined this chunk previously */
		if (ent->nid == NUMA_NO_NODE)
			continue;

		/* Remove from io mappings */
		if (ent->mem) {
			FUNC2(ent->mem);
			ent->mem = 0;
		}

		if (FUNC0(ent->nid, ent->start, ent->size)) {
			FUNC5("Failed to add trace memory to node %d\n",
				ent->nid);
			ret += 1;
			continue;
		}

		/*
		 * If kernel isn't compiled with the auto online option
		 * we need to online the memory ourselves.
		 */
		if (!memhp_auto_online) {
			FUNC4();
			FUNC8(ent->start, ent->size, NULL,
					   online_mem_block);
			FUNC7();
		}

		/*
		 * Memory was added successfully so clean up references to it
		 * so on reentry we can tell that this chunk was added.
		 */
		FUNC1(ent->dir);
		FUNC6("Added trace memory back to node %d\n", ent->nid);
		ent->size = ent->start = ent->nid = NUMA_NO_NODE;
	}
	if (ret)
		return ret;

	/* If all chunks of memory were added successfully, reset globals */
	FUNC3(memtrace_array);
	memtrace_array = NULL;
	memtrace_size = 0;
	memtrace_array_nr = 0;
	return 0;
}