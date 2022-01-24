#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* gitpath; char* commonpath; scalar_t__ fsync; int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ refdb_fs_backend ;
typedef  int /*<<< orphan*/  git_filebuf ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int GIT_EDIRECTORY ; 
 int GIT_EINVALIDSPEC ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 int GIT_FILEBUF_CREATE_LEADING_DIRS ; 
 int GIT_FILEBUF_FSYNC ; 
 int /*<<< orphan*/  GIT_PATH_REJECT_FILESYSTEM_DEFAULTS ; 
 int /*<<< orphan*/  GIT_REFS_FILE_MODE ; 
 int /*<<< orphan*/  GIT_RMDIR_SKIP_NONEMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(git_filebuf *file, refdb_fs_backend *backend, const char *name)
{
	int error, filebuf_flags;
	git_buf ref_path = GIT_BUF_INIT;
	const char *basedir;

	FUNC0(file && backend && name);

	if (!FUNC6(backend->repo, name, 0, GIT_PATH_REJECT_FILESYSTEM_DEFAULTS)) {
		FUNC3(GIT_ERROR_INVALID, "invalid reference name '%s'", name);
		return GIT_EINVALIDSPEC;
	}

	if (FUNC7(name))
		basedir = backend->gitpath;
	else
		basedir = backend->commonpath;

	/* Remove a possibly existing empty directory hierarchy
	 * which name would collide with the reference name
	 */
	if ((error = FUNC5(name, basedir, GIT_RMDIR_SKIP_NONEMPTY)) < 0)
		return error;

	if (FUNC2(&ref_path, basedir, name) < 0)
		return -1;

	filebuf_flags = GIT_FILEBUF_CREATE_LEADING_DIRS;
	if (backend->fsync)
		filebuf_flags |= GIT_FILEBUF_FSYNC;

	error = FUNC4(file, ref_path.ptr, filebuf_flags, GIT_REFS_FILE_MODE);

	if (error == GIT_EDIRECTORY)
		FUNC3(GIT_ERROR_REFERENCE, "cannot lock ref '%s', there are refs beneath that folder", name);

	FUNC1(&ref_path);
	return error;
}