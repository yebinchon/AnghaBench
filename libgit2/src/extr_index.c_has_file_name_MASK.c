#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* path; } ;
struct entry_internal {size_t pathlen; char* path; TYPE_2__ const entry; } ;
typedef  TYPE_2__ git_index_entry ;
struct TYPE_8__ {size_t length; struct entry_internal** contents; } ;
struct TYPE_10__ {TYPE_1__ entries; } ;
typedef  TYPE_3__ git_index ;

/* Variables and functions */
 int FUNC0 (TYPE_2__ const*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,size_t) ; 
 scalar_t__ FUNC2 (char const*,char*,size_t) ; 
 size_t FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(git_index *index,
	 const git_index_entry *entry, size_t pos, int ok_to_replace)
{
	size_t len = FUNC3(entry->path);
	int stage = FUNC0(entry);
	const char *name = entry->path;

	while (pos < index->entries.length) {
		struct entry_internal *p = index->entries.contents[pos++];

		if (len >= p->pathlen)
			break;
		if (FUNC2(name, p->path, len))
			break;
		if (FUNC0(&p->entry) != stage)
			continue;
		if (p->path[len] != '/')
			continue;
		if (!ok_to_replace)
			return -1;

		if (FUNC1(index, --pos) < 0)
			break;
	}
	return 0;
}