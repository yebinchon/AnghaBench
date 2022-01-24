#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_12__ {char const* ptr; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_13__ {int init_setup; } ;
typedef  TYPE_2__ git_attr_session ;
struct TYPE_14__ {char const* cfg_attr_file; } ;

/* Variables and functions */
 int GIT_ATTR_CHECK_INCLUDE_HEAD ; 
 char const* GIT_ATTR_FILE ; 
 char const* GIT_ATTR_FILE_INREPO ; 
 int /*<<< orphan*/  GIT_ATTR_FILE__FROM_FILE ; 
 int /*<<< orphan*/  GIT_ATTR_FILE__FROM_HEAD ; 
 int /*<<< orphan*/  GIT_ATTR_FILE__FROM_INDEX ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_REPOSITORY_ITEM_INFO ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_7__* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,char const*,char const*,int) ; 
 int FUNC8 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(
	git_repository *repo,
	git_attr_session *attr_session,
	uint32_t flags)
{
	git_buf path = GIT_BUF_INIT;
	git_index *idx = NULL;
	const char *workdir;
	int error = 0;

	if (attr_session && attr_session->init_setup)
		return 0;

	if ((error = FUNC0(repo)) < 0)
		return error;

	/*
	 * Preload attribute files that could contain macros so the
	 * definitions will be available for later file parsing.
	 */

	if ((error = FUNC8(&path, attr_session)) < 0 ||
	    (error = FUNC7(repo, attr_session, GIT_ATTR_FILE__FROM_FILE,
				       NULL, path.ptr, true)) < 0) {
		if (error != GIT_ENOTFOUND)
			goto out;
	}

	if ((error = FUNC7(repo, attr_session, GIT_ATTR_FILE__FROM_FILE,
				       NULL, FUNC3(repo)->cfg_attr_file, true)) < 0)
		goto out;

	FUNC1(&path); /* git_repository_item_path expects an empty buffer, because it uses git_buf_set */
	if ((error = FUNC5(&path, repo, GIT_REPOSITORY_ITEM_INFO)) < 0 ||
	    (error = FUNC7(repo, attr_session, GIT_ATTR_FILE__FROM_FILE,
				       path.ptr, GIT_ATTR_FILE_INREPO, true)) < 0) {
		if (error != GIT_ENOTFOUND)
			goto out;
	}

	if ((workdir = FUNC6(repo)) != NULL &&
	    (error = FUNC7(repo, attr_session, GIT_ATTR_FILE__FROM_FILE,
				       workdir, GIT_ATTR_FILE, true)) < 0)
			goto out;

	if ((error = FUNC4(&idx, repo)) < 0 ||
	    (error = FUNC7(repo, attr_session, GIT_ATTR_FILE__FROM_INDEX,
				       NULL, GIT_ATTR_FILE, true)) < 0)
			goto out;

	if ((flags & GIT_ATTR_CHECK_INCLUDE_HEAD) != 0 &&
	    (error = FUNC7(repo, attr_session, GIT_ATTR_FILE__FROM_HEAD,
				       NULL, GIT_ATTR_FILE, true)) < 0)
		goto out;

	if (attr_session)
		attr_session->init_setup = 1;

out:
	FUNC2(&path);

	return error;
}