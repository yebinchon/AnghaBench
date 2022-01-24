#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  conflicts; int /*<<< orphan*/  ignored; int /*<<< orphan*/  updates; int /*<<< orphan*/  dirty; int /*<<< orphan*/  untracked; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ notify_counts ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_7__ {int notify_flags; int checkout_strategy; TYPE_1__* notify_payload; int /*<<< orphan*/  notify_cb; } ;
typedef  TYPE_2__ git_checkout_options ;
typedef  int /*<<< orphan*/  cts ;

/* Variables and functions */
 int GIT_CHECKOUT_FORCE ; 
 int GIT_CHECKOUT_NOTIFY_CONFLICT ; 
 int GIT_CHECKOUT_NOTIFY_UNTRACKED ; 
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int GIT_CHECKOUT_REMOVE_UNTRACKED ; 
 int GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/ * g_typechange_expected_conflicts ; 
 int /*<<< orphan*/ * g_typechange_expected_untracked ; 
 int /*<<< orphan*/ ** g_typechange_oids ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  make_submodule_dirty ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  notify_counter ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 

void FUNC16(void)
{
	int i;
	git_object *obj;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	notify_counts cts = {0};

	opts.notify_flags =
		GIT_CHECKOUT_NOTIFY_CONFLICT | GIT_CHECKOUT_NOTIFY_UNTRACKED;
	opts.notify_cb = notify_counter;
	opts.notify_payload = &cts;

	for (i = 0; g_typechange_oids[i] != NULL; ++i) {
		FUNC4(FUNC12(&obj, g_repo, g_typechange_oids[i]));

		FUNC5("typechanges/a/blocker");
		FUNC5("typechanges/b");
		FUNC5("typechanges/c/sub/sub/file");
		FUNC7("typechanges/d", NULL, GIT_RMDIR_REMOVE_FILES);
		FUNC15("typechanges/d", 0777); /* intentionally empty dir */
		FUNC5("typechanges/untracked");
		FUNC4(FUNC13(g_repo, make_submodule_dirty, NULL));

		opts.checkout_strategy = GIT_CHECKOUT_SAFE;
		FUNC14(&cts, 0, sizeof(cts));

		FUNC3(FUNC6(g_repo, obj, &opts));
		FUNC2(cts.conflicts, g_typechange_expected_conflicts[i]);
		FUNC2(cts.untracked, g_typechange_expected_untracked[i]);
		FUNC2(cts.dirty, 0);
		FUNC2(cts.updates, 0);
		FUNC2(cts.ignored, 0);

		opts.checkout_strategy =
			GIT_CHECKOUT_FORCE | GIT_CHECKOUT_REMOVE_UNTRACKED;
		FUNC14(&cts, 0, sizeof(cts));

		FUNC1(FUNC10("typechanges/untracked"));

		FUNC4(FUNC6(g_repo, obj, &opts));
		FUNC2(0, cts.conflicts);

		FUNC1(!FUNC10("typechanges/untracked"));

		FUNC4(
			FUNC11(g_repo, FUNC9(obj)));

		FUNC0(g_repo, FUNC9(obj), NULL, true);

		FUNC8(obj);
	}
}