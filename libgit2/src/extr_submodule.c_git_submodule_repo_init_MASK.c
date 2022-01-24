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
struct TYPE_7__ {int /*<<< orphan*/  path; int /*<<< orphan*/  repo; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_submodule ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 

int FUNC7(
	git_repository **out,
	const git_submodule *sm,
	int use_gitlink)
{
	int error;
	git_repository *sub_repo = NULL;
	const char *configured_url;
	git_config *cfg = NULL;
	git_buf buf = GIT_BUF_INIT;

	FUNC0(out && sm);

	/* get the configured remote url of the submodule */
	if ((error = FUNC2(&buf, "submodule.%s.url", sm->name)) < 0 ||
		(error = FUNC5(&cfg, sm->repo)) < 0 ||
		(error = FUNC4(&configured_url, cfg, buf.ptr)) < 0 ||
		(error = FUNC6(&sub_repo, sm->repo, sm->path, configured_url, use_gitlink)) < 0)
		goto done;

	*out = sub_repo;

done:
	FUNC3(cfg);
	FUNC1(&buf);
	return error;
}