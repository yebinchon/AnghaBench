#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* path; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static size_t FUNC4(const char *dirname, git_index *index, size_t start)
{
	size_t dirlen, i, entries = FUNC0(index);

	dirlen = FUNC3(dirname);
	for (i = start; i < entries; ++i) {
		const git_index_entry *entry = FUNC1(index, i);
		if (FUNC3(entry->path) < dirlen ||
		    FUNC2(entry->path, dirname, dirlen) ||
			(dirlen > 0 && entry->path[dirlen] != '/')) {
			break;
		}
	}

	return i;
}