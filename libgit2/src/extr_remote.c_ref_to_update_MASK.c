#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_refspec ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(int *update, git_buf *remote_name, git_remote *remote, git_refspec *spec, const char *ref_name)
{
	int error = 0;
	git_repository *repo;
	git_buf upstream_remote = GIT_BUF_INIT;
	git_buf upstream_name = GIT_BUF_INIT;

	repo = FUNC10(remote);

	if ((!FUNC6(ref_name)) ||
	    !FUNC9(remote) ||
	    (error = FUNC2(&upstream_remote, repo, ref_name) < 0) ||
	    FUNC0(FUNC9(remote), FUNC3(&upstream_remote)) ||
	    (error = FUNC1(&upstream_name, repo, ref_name)) < 0 ||
	    !FUNC7(spec, FUNC3(&upstream_name)) ||
	    (error = FUNC8(remote_name, spec, upstream_name.ptr)) < 0) {
		/* Not an error if there is no upstream */
		if (error == GIT_ENOTFOUND) {
			FUNC5();
			error = 0;
		}

		*update = 0;
	} else {
		*update = 1;
	}

	FUNC4(&upstream_remote);
	FUNC4(&upstream_name);
	return error;
}