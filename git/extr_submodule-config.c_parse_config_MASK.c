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
struct TYPE_2__ {scalar_t__ type; } ;
struct submodule {int recommend_shallow; void* branch; int /*<<< orphan*/  name; TYPE_1__ update_strategy; void* url; void* ignore; int /*<<< orphan*/  fetch_recurse; void* path; } ;
struct strbuf {char const* buf; } ;
struct parse_config_parameter {int /*<<< orphan*/  treeish_name; int /*<<< orphan*/  overwrite; int /*<<< orphan*/  gitmodules_oid; int /*<<< orphan*/  cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  RECURSE_SUBMODULES_NONE ; 
 scalar_t__ SM_UPDATE_UNSPECIFIED ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct submodule*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct submodule*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (char const*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*) ; 
 struct submodule* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char const*,int) ; 
 scalar_t__ FUNC12 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*,char const*) ; 
 void* FUNC18 (char const*) ; 

__attribute__((used)) static int FUNC19(const char *var, const char *value, void *data)
{
	struct parse_config_parameter *me = data;
	struct submodule *submodule;
	struct strbuf name = STRBUF_INIT, item = STRBUF_INIT;
	int ret = 0;

	/* this also ensures that we only parse submodule entries */
	if (!FUNC10(var, &name, &item))
		return 0;

	submodule = FUNC9(me->cache,
					     me->gitmodules_oid,
					     name.buf);

	if (!FUNC14(item.buf, "path")) {
		if (!value)
			ret = FUNC3(var);
		else if (FUNC8(value))
			FUNC15(var, value);
		else if (!me->overwrite && submodule->path)
			FUNC16(me->treeish_name, submodule->name,
					"path");
		else {
			if (submodule->path)
				FUNC2(me->cache, submodule);
			FUNC5((void *) submodule->path);
			submodule->path = FUNC18(value);
			FUNC1(me->cache, submodule);
		}
	} else if (!FUNC14(item.buf, "fetchrecursesubmodules")) {
		/* when parsing worktree configurations we can die early */
		int die_on_error = FUNC7(me->gitmodules_oid);
		if (!me->overwrite &&
		    submodule->fetch_recurse != RECURSE_SUBMODULES_NONE)
			FUNC16(me->treeish_name, submodule->name,
					"fetchrecursesubmodules");
		else
			submodule->fetch_recurse = FUNC11(
								var, value,
								die_on_error);
	} else if (!FUNC14(item.buf, "ignore")) {
		if (!value)
			ret = FUNC3(var);
		else if (!me->overwrite && submodule->ignore)
			FUNC16(me->treeish_name, submodule->name,
					"ignore");
		else if (FUNC14(value, "untracked") &&
			 FUNC14(value, "dirty") &&
			 FUNC14(value, "all") &&
			 FUNC14(value, "none"))
			FUNC17("Invalid parameter '%s' for config option "
					"'submodule.%s.ignore'", value, name.buf);
		else {
			FUNC5((void *) submodule->ignore);
			submodule->ignore = FUNC18(value);
		}
	} else if (!FUNC14(item.buf, "url")) {
		if (!value) {
			ret = FUNC3(var);
		} else if (FUNC8(value)) {
			FUNC15(var, value);
		} else if (!me->overwrite && submodule->url) {
			FUNC16(me->treeish_name, submodule->name,
					"url");
		} else {
			FUNC5((void *) submodule->url);
			submodule->url = FUNC18(value);
		}
	} else if (!FUNC14(item.buf, "update")) {
		if (!value)
			ret = FUNC3(var);
		else if (!me->overwrite &&
			 submodule->update_strategy.type != SM_UPDATE_UNSPECIFIED)
			FUNC16(me->treeish_name, submodule->name,
					     "update");
		else if (FUNC12(value,
			 &submodule->update_strategy) < 0)
				FUNC4(FUNC0("invalid value for %s"), var);
	} else if (!FUNC14(item.buf, "shallow")) {
		if (!me->overwrite && submodule->recommend_shallow != -1)
			FUNC16(me->treeish_name, submodule->name,
					     "shallow");
		else
			submodule->recommend_shallow =
				FUNC6(var, value);
	} else if (!FUNC14(item.buf, "branch")) {
		if (!me->overwrite && submodule->branch)
			FUNC16(me->treeish_name, submodule->name,
					     "branch");
		else {
			FUNC5((void *)submodule->branch);
			submodule->branch = FUNC18(value);
		}
	}

	FUNC13(&name);
	FUNC13(&item);

	return ret;
}