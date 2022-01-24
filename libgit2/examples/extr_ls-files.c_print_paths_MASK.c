#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t file_count; char** files; scalar_t__ error_unmatch; } ;
typedef  TYPE_1__ ls_options ;
struct TYPE_7__ {char const* path; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_INDEX_STAGE_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(ls_options *opts, git_index *index)
{
	size_t i;
	const git_index_entry *entry;

	/* if there are no files explicitly listed by the user print all entries in the index */
	if (opts->file_count == 0) {
		size_t entry_count = FUNC1(index);

		for (i = 0; i < entry_count; i++) {
			entry = FUNC2(index, i);
			FUNC4(entry->path);
		}
		return 0;
	}

	/* loop through the files found in the args and print them if they exist */
	for (i = 0; i < opts->file_count; ++i) {
		const char *path = opts->files[i];

		if ((entry = FUNC3(index, path, GIT_INDEX_STAGE_NORMAL)) != NULL) {
			FUNC4(path);
		} else if (opts->error_unmatch) {
			FUNC0(stderr, "error: pathspec '%s' did not match any file(s) known to git.\n", path);
			FUNC0(stderr, "Did you forget to 'git add'?\n");
			return -1;
		}
	}

	return 0;
}