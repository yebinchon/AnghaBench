#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* path; } ;
struct entry_internal {size_t pathlen; char* path; TYPE_2__ const entry; } ;
typedef  TYPE_2__ git_index_entry ;
struct TYPE_9__ {size_t length; struct entry_internal** contents; } ;
struct TYPE_11__ {TYPE_1__ entries; } ;
typedef  TYPE_3__ git_index ;

/* Variables and functions */
 int FUNC0 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,TYPE_3__*,char const*,size_t,int) ; 
 scalar_t__ FUNC2 (TYPE_3__*,size_t) ; 
 scalar_t__ FUNC3 (char*,char const*,size_t) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(git_index *index,
		const git_index_entry *entry, int ok_to_replace)
{
	int stage = FUNC0(entry);
	const char *name = entry->path;
	const char *slash = name + FUNC4(name);

	for (;;) {
		size_t len, pos;

		for (;;) {
			if (*--slash == '/')
				break;
			if (slash <= entry->path)
				return 0;
		}
		len = slash - name;

		if (!FUNC1(&pos, index, name, len, stage)) {
			if (!ok_to_replace)
				return -1;

			if (FUNC2(index, pos) < 0)
				break;
			continue;
		}

		/*
		 * Trivial optimization: if we find an entry that
		 * already matches the sub-directory, then we know
		 * we're ok, and we can exit.
		 */
		for (; pos < index->entries.length; ++pos) {
			struct entry_internal *p = index->entries.contents[pos];

			if (p->pathlen <= len ||
			    p->path[len] != '/' ||
			    FUNC3(p->path, name, len))
				break; /* not our subdirectory */

			if (FUNC0(&p->entry) == stage)
				return 0;
		}
	}

	return 0;
}