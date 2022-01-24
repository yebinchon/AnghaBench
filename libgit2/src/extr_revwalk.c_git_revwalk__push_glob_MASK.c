#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opts ;
struct TYPE_17__ {int from_glob; } ;
typedef  TYPE_1__ git_revwalk__push_options ;
struct TYPE_18__ {int /*<<< orphan*/  repo; } ;
typedef  TYPE_2__ git_revwalk ;
typedef  int /*<<< orphan*/  git_reference_iterator ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_19__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  GIT_REFS_DIR ; 
 TYPE_1__ GIT_REVWALK__PUSH_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_1__ const*,int) ; 
 size_t FUNC14 (char const*,char*) ; 

int FUNC15(git_revwalk *walk, const char *glob, const git_revwalk__push_options *given_opts)
{
	git_revwalk__push_options opts = GIT_REVWALK__PUSH_OPTIONS_INIT;
	int error = 0;
	git_buf buf = GIT_BUF_INIT;
	git_reference *ref;
	git_reference_iterator *iter;
	size_t wildcard;

	FUNC1(walk && glob);

	if (given_opts)
		FUNC13(&opts, given_opts, sizeof(opts));

	/* refs/ is implied if not given in the glob */
	if (FUNC2(glob, GIT_REFS_DIR) != 0)
		FUNC4(&buf, GIT_REFS_DIR, glob);
	else
		FUNC6(&buf, glob);
	FUNC0(&buf);

	/* If no '?', '*' or '[' exist, we append '/ *' to the glob */
	wildcard = FUNC14(glob, "?*[");
	if (!glob[wildcard])
		FUNC5(&buf, "/*", 2);

	if ((error = FUNC9(&iter, walk->repo, buf.ptr)) < 0)
		goto out;

	opts.from_glob = true;
	while ((error = FUNC11(&ref, iter)) == 0) {
		error = FUNC12(walk, FUNC10(ref), &opts);
		FUNC7(ref);
		if (error < 0)
			break;
	}
	FUNC8(iter);

	if (error == GIT_ITEROVER)
		error = 0;
out:
	FUNC3(&buf);
	return error;
}