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
typedef  int /*<<< orphan*/  uint16_t ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  path; } ;
struct entry_internal {size_t pathlen; int /*<<< orphan*/  path; TYPE_1__ entry; } ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct entry_internal*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  GIT_ERROR_INDEX ; 
 unsigned int GIT_PATH_REJECT_INDEX_DEFAULTS ; 
 unsigned int GIT_PATH_REJECT_WORKDIR_DEFAULTS ; 
 struct entry_internal* FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(
	git_index_entry **out,
	git_repository *repo,
	const char *path,
	struct stat *st,
	bool from_workdir)
{
	size_t pathlen = FUNC6(path), alloclen;
	struct entry_internal *entry;
	unsigned int path_valid_flags = GIT_PATH_REJECT_INDEX_DEFAULTS;
	uint16_t mode = 0;

	/* always reject placing `.git` in the index and directory traversal.
	 * when requested, disallow platform-specific filenames and upgrade to
	 * the platform-specific `.git` tests (eg, `git~1`, etc).
	 */
	if (from_workdir)
		path_valid_flags |= GIT_PATH_REJECT_WORKDIR_DEFAULTS;
	if (st)
		mode = st->st_mode;

	if (!FUNC4(repo, path, mode, path_valid_flags)) {
		FUNC3(GIT_ERROR_INDEX, "invalid path: '%s'", path);
		return -1;
	}

	FUNC1(&alloclen, sizeof(struct entry_internal), pathlen);
	FUNC1(&alloclen, alloclen, 1);
	entry = FUNC2(1, alloclen);
	FUNC0(entry);

	entry->pathlen = pathlen;
	FUNC5(entry->path, path, pathlen);
	entry->entry.path = entry->path;

	*out = (git_index_entry *)entry;
	return 0;
}