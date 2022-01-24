#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_7__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {TYPE_2__ map; TYPE_1__* file; int /*<<< orphan*/  flags; int /*<<< orphan*/  repo; } ;
typedef  TYPE_3__ git_diff_file_content ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_6__ {int size; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIGMAP_SYMLINKS ; 
 int /*<<< orphan*/  GIT_DIFF_FLAG__FREE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(
	git_diff_file_content *fc, git_buf *path)
{
	ssize_t alloc_len, read_len;
	int symlink_supported, error;

	if ((error = FUNC5(
		&symlink_supported, fc->repo, GIT_CONFIGMAP_SYMLINKS)) < 0)
		return -1;

	if (!symlink_supported)
		return FUNC1(fc, path);

	/* link path on disk could be UTF-16, so prepare a buffer that is
	 * big enough to handle some UTF-8 data expansion
	 */
	alloc_len = (ssize_t)(fc->file->size * 2) + 1;

	fc->map.data = FUNC2(alloc_len, sizeof(char));
	FUNC0(fc->map.data);

	fc->flags |= GIT_DIFF_FLAG__FREE_DATA;

	read_len = FUNC6(FUNC3(path), fc->map.data, alloc_len);
	if (read_len < 0) {
		FUNC4(GIT_ERROR_OS, "failed to read symlink '%s'", fc->file->path);
		return -1;
	}

	fc->map.len = read_len;
	return 0;
}