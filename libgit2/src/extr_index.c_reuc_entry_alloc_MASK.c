#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  path; } ;
struct reuc_entry_internal {size_t pathlen; int /*<<< orphan*/  path; TYPE_1__ entry; } ;
typedef  int /*<<< orphan*/  git_index_reuc_entry ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t*,size_t,int) ; 
 struct reuc_entry_internal* FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static git_index_reuc_entry *FUNC4(const char *path)
{
	size_t pathlen = FUNC3(path),
		structlen = sizeof(struct reuc_entry_internal),
		alloclen;
	struct reuc_entry_internal *entry;

	if (FUNC0(&alloclen, structlen, pathlen) ||
		FUNC0(&alloclen, alloclen, 1))
		return NULL;

	entry = FUNC1(1, alloclen);
	if (!entry)
		return NULL;

	entry->pathlen = pathlen;
	FUNC2(entry->path, path, pathlen);
	entry->entry.path = entry->path;

	return (git_index_reuc_entry *)entry;
}