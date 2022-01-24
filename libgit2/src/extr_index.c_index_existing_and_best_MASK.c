#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char const* path; } ;
typedef  TYPE_2__ const git_index_entry ;
struct TYPE_10__ {size_t length; TYPE_2__ const** contents; } ;
struct TYPE_12__ {TYPE_1__ entries; scalar_t__ ignore_case; } ;
typedef  TYPE_3__ git_index ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__ const*) ; 
 scalar_t__ GIT_INDEX_STAGE_ANCESTOR ; 
 int FUNC1 (char const*,char const*) ; 
 int FUNC2 (char const*,char const*) ; 
 int FUNC3 (size_t*,TYPE_3__*,char const*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(
	git_index_entry **existing,
	size_t *existing_position,
	git_index_entry **best,
	git_index *index,
	const git_index_entry *entry)
{
	git_index_entry *e;
	size_t pos;
	int error;

	error = FUNC3(&pos,
		index, entry->path, 0, FUNC0(entry));

	if (error == 0) {
		*existing = index->entries.contents[pos];
		*existing_position = pos;
		*best = index->entries.contents[pos];
		return;
	}

	*existing = NULL;
	*existing_position = 0;
	*best = NULL;

	if (FUNC0(entry) == 0) {
		for (; pos < index->entries.length; pos++) {
			int (*strcomp)(const char *a, const char *b) =
				index->ignore_case ? git__strcasecmp : git__strcmp;

			e = index->entries.contents[pos];

			if (strcomp(entry->path, e->path) != 0)
				break;

			if (FUNC0(e) == GIT_INDEX_STAGE_ANCESTOR) {
				*best = e;
				continue;
			} else {
				*best = e;
				break;
			}
		}
	}
}