#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ update; int /*<<< orphan*/  name; int /*<<< orphan*/  url; int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_submodule ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_9__ {char const* ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_SUBMODULE ; 
 scalar_t__ GIT_SUBMODULE_UPDATE_CHECKOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (scalar_t__) ; 

int FUNC8(git_submodule *sm, int overwrite)
{
	int error;
	const char *val;
	git_buf key = GIT_BUF_INIT, effective_submodule_url = GIT_BUF_INIT;
	git_config *cfg = NULL;

	if (!sm->url) {
		FUNC4(GIT_ERROR_SUBMODULE,
			"no URL configured for submodule '%s'", sm->name);
		return -1;
	}

	if ((error = FUNC5(&cfg, sm->repo)) < 0)
		return error;

	/* write "submodule.NAME.url" */

	if ((error = FUNC6(&effective_submodule_url, sm->repo, sm->url)) < 0 ||
		(error = FUNC1(&key, "submodule.%s.url", sm->name)) < 0 ||
		(error = FUNC2(
			cfg, key.ptr, effective_submodule_url.ptr, overwrite != 0, false)) < 0)
		goto cleanup;

	/* write "submodule.NAME.update" if not default */

	val = (sm->update == GIT_SUBMODULE_UPDATE_CHECKOUT) ?
		NULL : FUNC7(sm->update);

	if ((error = FUNC1(&key, "submodule.%s.update", sm->name)) < 0 ||
		(error = FUNC2(
			cfg, key.ptr, val, overwrite != 0, false)) < 0)
		goto cleanup;

	/* success */

cleanup:
	FUNC3(cfg);
	FUNC0(&key);
	FUNC0(&effective_submodule_url);

	return error;
}