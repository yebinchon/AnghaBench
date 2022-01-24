#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int count; } ;
typedef  TYPE_2__ sm_lookup_data ;
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {int mode; char const* path; int /*<<< orphan*/  id; TYPE_1__ member_0; } ;
typedef  TYPE_3__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int GIT_FILEMODE_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  sm_lookup_cb ; 

void FUNC16(void)
{
	const char *newpath = "sm_actually_changed";
	git_index *idx;
	sm_lookup_data data;

	FUNC2(FUNC12(&idx, g_repo));

	/* We're replicating 'git mv sm_unchanged sm_actually_changed' in this test */

	FUNC2(FUNC15("submod2/sm_unchanged", "submod2/sm_actually_changed"));

	/* Change the path in .gitmodules and stage it*/
	{
		git_config *cfg;

		FUNC2(FUNC4(&cfg, "submod2/.gitmodules"));
		FUNC2(FUNC5(cfg, "submodule.sm_unchanged.path", newpath));
		FUNC3(cfg);

		FUNC2(FUNC7(idx, ".gitmodules"));
	}

	/* Change the worktree info in the submodule's config */
	{
		git_config *cfg;

		FUNC2(FUNC4(&cfg, "submod2/.git/modules/sm_unchanged/config"));
		FUNC2(FUNC5(cfg, "core.worktree", "../../../sm_actually_changed"));
		FUNC3(cfg);
	}

	/* Rename the entry in the index */
	{
		const git_index_entry *e;
		git_index_entry entry = { 0 };

		e = FUNC8(idx, "sm_unchanged", 0);
		FUNC0(e);
		FUNC1(GIT_FILEMODE_COMMIT, e->mode);

		entry.path = newpath;
		entry.mode = GIT_FILEMODE_COMMIT;
		FUNC11(&entry.id, &e->id);

		FUNC2(FUNC9(idx, "sm_unchanged", 0));
		FUNC2(FUNC6(idx, &entry));
		FUNC2(FUNC10(idx));
	}

	FUNC14(&data, 0, sizeof(data));
	FUNC2(FUNC13(g_repo, sm_lookup_cb, &data));
	FUNC1(8, data.count);
}