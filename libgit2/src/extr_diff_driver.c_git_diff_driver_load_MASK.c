#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_22__ {int /*<<< orphan*/  drivers; } ;
typedef  TYPE_1__ git_diff_driver_registry ;
struct TYPE_23__ {int /*<<< orphan*/  name; int /*<<< orphan*/  word_pattern; int /*<<< orphan*/  type; int /*<<< orphan*/  fn_patterns; int /*<<< orphan*/  binary_flags; } ;
typedef  TYPE_2__ git_diff_driver ;
struct TYPE_24__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_3__ git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_25__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_4__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_DRIVER_AUTO ; 
 size_t DIFF_DRIVER_BINARY ; 
 int /*<<< orphan*/  DIFF_DRIVER_PATTERNLIST ; 
 TYPE_4__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_FORCE_TEXT ; 
 int GIT_ENOTFOUND ; 
 int FUNC0 (TYPE_2__**,size_t*,char const*) ; 
 int /*<<< orphan*/  diff_driver_funcname ; 
 int /*<<< orphan*/  diff_driver_xfuncname ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_4__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC11 (TYPE_2__**,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* global_drivers ; 
 scalar_t__ FUNC19 (char*) ; 

__attribute__((used)) static int FUNC20(
	git_diff_driver **out, git_repository *repo, const char *driver_name)
{
	int error = 0;
	git_diff_driver_registry *reg;
	git_diff_driver *drv;
	size_t namelen;
	git_config *cfg = NULL;
	git_buf name = GIT_BUF_INIT;
	git_config_entry *ce = NULL;
	bool found_driver = false;

	if ((reg = FUNC16(repo)) == NULL)
		return -1;

	if ((drv = FUNC17(reg->drivers, driver_name)) != NULL) {
		*out = drv;
		return 0;
	}

	if ((error = FUNC0(&drv, &namelen, driver_name)) < 0)
		goto done;

	drv->type = DIFF_DRIVER_AUTO;

	/* if you can't read config for repo, just use default driver */
	if (FUNC15(&cfg, repo) < 0) {
		FUNC13();
		goto done;
	}

	if ((error = FUNC4(&name, "diff.%s.binary", driver_name)) < 0)
		goto done;

	switch (FUNC6(cfg, name.ptr, -1)) {
	case true:
		/* if diff.<driver>.binary is true, just return the binary driver */
		*out = &global_drivers[DIFF_DRIVER_BINARY];
		goto done;
	case false:
		/* if diff.<driver>.binary is false, force binary checks off */
		/* but still may have custom function context patterns, etc. */
		drv->binary_flags = GIT_DIFF_FORCE_TEXT;
		found_driver = true;
		break;
	default:
		/* diff.<driver>.binary unspecified or "auto", so just continue */
		break;
	}

	/* TODO: warn if diff.<name>.command or diff.<name>.textconv are set */

	FUNC5(&name, namelen + FUNC19("diff.."));
	if ((error = FUNC2(&name, "xfuncname")) < 0)
		goto done;

	if ((error = FUNC10(
			cfg, name.ptr, NULL, diff_driver_xfuncname, drv)) < 0) {
		if (error != GIT_ENOTFOUND)
			goto done;
		FUNC13(); /* no diff.<driver>.xfuncname, so just continue */
	}

	FUNC5(&name, namelen + FUNC19("diff.."));
	if ((error = FUNC2(&name, "funcname")) < 0)
		goto done;

	if ((error = FUNC10(
			cfg, name.ptr, NULL, diff_driver_funcname, drv)) < 0) {
		if (error != GIT_ENOTFOUND)
			goto done;
		FUNC13(); /* no diff.<driver>.funcname, so just continue */
	}

	/* if we found any patterns, set driver type to use correct callback */
	if (FUNC1(drv->fn_patterns) > 0) {
		drv->type = DIFF_DRIVER_PATTERNLIST;
		found_driver = true;
	}

	FUNC5(&name, namelen + FUNC19("diff.."));
	if ((error = FUNC2(&name, "wordregex")) < 0)
		goto done;

	if ((error = FUNC7(&ce, cfg, name.ptr, false)) < 0)
		goto done;
	if (!ce || !ce->value)
		/* no diff.<driver>.wordregex, so just continue */;
	else if (!(error = FUNC14(&drv->word_pattern, ce->value, 0)))
		found_driver = true;
	else {
		/* TODO: warn about bad regex instead of failure */
		goto done;
	}

	/* TODO: look up diff.<driver>.algorithm to turn on minimal / patience
	 * diff in drv->other_flags
	 */

	/* if no driver config found at all, fall back on AUTO driver */
	if (!found_driver)
		goto done;

	/* store driver in registry */
	if ((error = FUNC18(reg->drivers, drv->name, drv)) < 0)
		goto done;

	*out = drv;

done:
	FUNC8(ce);
	FUNC3(&name);
	FUNC9(cfg);

	if (!*out) {
		int error2 = FUNC11(out, reg, driver_name);
		if (!error)
			error = error2;
	}

	if (drv && drv != *out)
		FUNC12(drv);

	return error;
}