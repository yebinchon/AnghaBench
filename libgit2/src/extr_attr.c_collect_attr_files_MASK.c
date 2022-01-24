#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  git_vector ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_14__ {int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ git_buf ;
typedef  int /*<<< orphan*/  git_attr_session ;
struct TYPE_15__ {int flags; char const* workdir; int /*<<< orphan*/ * files; int /*<<< orphan*/  index; int /*<<< orphan*/ * attr_session; int /*<<< orphan*/ * repo; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_2__ attr_walk_up_info ;
struct TYPE_16__ {int /*<<< orphan*/ * cfg_attr_file; } ;

/* Variables and functions */
 int GIT_ATTR_CHECK_NO_SYSTEM ; 
 int /*<<< orphan*/ * GIT_ATTR_FILE_INREPO ; 
 int /*<<< orphan*/  GIT_ATTR_FILE__FROM_FILE ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_REPOSITORY_ITEM_INFO ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (TYPE_1__*,char const*) ; 
 int FUNC4 (TYPE_1__*,char const*,char const*) ; 
 int FUNC5 (TYPE_1__*,char const*,int (*) (TYPE_2__*,char*),TYPE_2__*) ; 
 TYPE_6__* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(
	git_repository *repo,
	git_attr_session *attr_session,
	uint32_t flags,
	const char *path,
	git_vector *files)
{
	int error = 0;
	git_buf dir = GIT_BUF_INIT, attrfile = GIT_BUF_INIT;
	const char *workdir = FUNC9(repo);
	attr_walk_up_info info = { NULL };

	if ((error = FUNC0(repo, attr_session, flags)) < 0)
		return error;

	/* Resolve path in a non-bare repo */
	if (workdir != NULL)
		error = FUNC4(&dir, path, workdir);
	else
		error = FUNC3(&dir, path);
	if (error < 0)
		goto cleanup;

	/* in precendence order highest to lowest:
	 * - $GIT_DIR/info/attributes
	 * - path components with .gitattributes
	 * - config core.attributesfile
	 * - $GIT_PREFIX/etc/gitattributes
	 */

	if ((error = FUNC8(&attrfile, repo, GIT_REPOSITORY_ITEM_INFO)) < 0 ||
	    (error = FUNC10(repo, attr_session, files, GIT_ATTR_FILE__FROM_FILE,
				    attrfile.ptr, GIT_ATTR_FILE_INREPO, true)) < 0) {
		if (error != GIT_ENOTFOUND)
			goto cleanup;
	}

	info.repo = repo;
	info.attr_session = attr_session;
	info.flags = flags;
	info.workdir = workdir;
	if (FUNC7(&info.index, repo) < 0)
		FUNC2(); /* no error even if there is no index */
	info.files = files;

	if (!FUNC13(dir.ptr, "."))
		error = FUNC11(&info, "");
	else
		error = FUNC5(&dir, workdir, push_one_attr, &info);

	if (error < 0)
		goto cleanup;

	if (FUNC6(repo)->cfg_attr_file != NULL) {
		error = FUNC10(repo, attr_session, files, GIT_ATTR_FILE__FROM_FILE,
				       NULL, FUNC6(repo)->cfg_attr_file, true);
		if (error < 0)
			goto cleanup;
	}

	if ((flags & GIT_ATTR_CHECK_NO_SYSTEM) == 0) {
		error = FUNC14(&dir, attr_session);

		if (!error)
			error = FUNC10(repo, attr_session, files, GIT_ATTR_FILE__FROM_FILE,
					       NULL, dir.ptr, true);
		else if (error == GIT_ENOTFOUND)
			error = 0;
	}

 cleanup:
	if (error < 0)
		FUNC12(files);
	FUNC1(&attrfile);
	FUNC1(&dir);

	return error;
}