#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  argv; } ;
struct submodule_parallel_fetch {size_t count; int result; int oid_fetch_tasks_nr; TYPE_2__ args; int /*<<< orphan*/  prefix; struct fetch_task** oid_fetch_tasks; int /*<<< orphan*/  quiet; TYPE_4__* r; int /*<<< orphan*/  changed_submodule_names; } ;
struct strbuf {char* buf; } ;
struct fetch_task {int /*<<< orphan*/  commits; TYPE_3__* repo; TYPE_5__* sub; } ;
struct child_process {int git_cmd; int /*<<< orphan*/  args; int /*<<< orphan*/  dir; int /*<<< orphan*/  env_array; } ;
struct cache_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  ce_mode; } ;
struct TYPE_12__ {int /*<<< orphan*/  path; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {TYPE_1__* index; } ;
struct TYPE_10__ {int /*<<< orphan*/  gitdir; } ;
struct TYPE_8__ {size_t cache_nr; struct cache_entry** cache; } ;

/* Variables and functions */
#define  RECURSE_SUBMODULES_DEFAULT 131 
#define  RECURSE_SUBMODULES_OFF 130 
#define  RECURSE_SUBMODULES_ON 129 
#define  RECURSE_SUBMODULES_ON_DEMAND 128 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  append_oid_to_argv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct child_process*) ; 
 struct fetch_task* FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fetch_task*) ; 
 int /*<<< orphan*/  FUNC8 (struct fetch_task*) ; 
 int FUNC9 (TYPE_5__*,struct submodule_parallel_fetch*) ; 
 TYPE_3__* FUNC10 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct child_process *cp,
			      struct strbuf *err, void *data, void **task_cb)
{
	struct submodule_parallel_fetch *spf = data;

	for (; spf->count < spf->r->index->cache_nr; spf->count++) {
		const struct cache_entry *ce = spf->r->index->cache[spf->count];
		const char *default_argv;
		struct fetch_task *task;

		if (!FUNC0(ce->ce_mode))
			continue;

		task = FUNC6(spf->r, ce->name);
		if (!task)
			continue;

		switch (FUNC9(task->sub, spf))
		{
		default:
		case RECURSE_SUBMODULES_DEFAULT:
		case RECURSE_SUBMODULES_ON_DEMAND:
			if (!task->sub ||
			    !FUNC16(
					&spf->changed_submodule_names,
					task->sub->name))
				continue;
			default_argv = "on-demand";
			break;
		case RECURSE_SUBMODULES_ON:
			default_argv = "yes";
			break;
		case RECURSE_SUBMODULES_OFF:
			continue;
		}

		task->repo = FUNC10(spf->r, task->sub);
		if (task->repo) {
			struct strbuf submodule_prefix = STRBUF_INIT;
			FUNC5(cp);
			cp->dir = task->repo->gitdir;
			FUNC13(&cp->env_array);
			cp->git_cmd = 1;
			if (!spf->quiet)
				FUNC14(err, "Fetching submodule %s%s\n",
					    spf->prefix, ce->name);
			FUNC2(&cp->args);
			FUNC4(&cp->args, spf->args.argv);
			FUNC3(&cp->args, default_argv);
			FUNC3(&cp->args, "--submodule-prefix");

			FUNC14(&submodule_prefix, "%s%s/",
						       spf->prefix,
						       task->sub->path);
			FUNC3(&cp->args, submodule_prefix.buf);

			spf->count++;
			*task_cb = task;

			FUNC15(&submodule_prefix);
			return 1;
		} else {

			FUNC7(task);
			FUNC8(task);

			/*
			 * An empty directory is normal,
			 * the submodule is not initialized
			 */
			if (FUNC0(ce->ce_mode) &&
			    !FUNC11(ce->name)) {
				spf->result = 1;
				FUNC14(err,
					    FUNC1("Could not access submodule '%s'"),
					    ce->name);
			}
		}
	}

	if (spf->oid_fetch_tasks_nr) {
		struct fetch_task *task =
			spf->oid_fetch_tasks[spf->oid_fetch_tasks_nr - 1];
		struct strbuf submodule_prefix = STRBUF_INIT;
		spf->oid_fetch_tasks_nr--;

		FUNC14(&submodule_prefix, "%s%s/",
			    spf->prefix, task->sub->path);

		FUNC5(cp);
		FUNC13(&cp->env_array);
		cp->git_cmd = 1;
		cp->dir = task->repo->gitdir;

		FUNC2(&cp->args);
		FUNC4(&cp->args, spf->args.argv);
		FUNC3(&cp->args, "on-demand");
		FUNC3(&cp->args, "--submodule-prefix");
		FUNC3(&cp->args, submodule_prefix.buf);

		/* NEEDSWORK: have get_default_remote from submodule--helper */
		FUNC3(&cp->args, "origin");
		FUNC12(task->commits,
					  append_oid_to_argv, &cp->args);

		*task_cb = task;
		FUNC15(&submodule_prefix);
		return 1;
	}

	return 0;
}