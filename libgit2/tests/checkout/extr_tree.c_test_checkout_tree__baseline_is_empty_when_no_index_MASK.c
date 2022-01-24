#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_4__ {size_t* notify_payload; int /*<<< orphan*/  checkout_strategy; int /*<<< orphan*/  notify_cb; int /*<<< orphan*/  notify_flags; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 int /*<<< orphan*/  GIT_CHECKOUT_NOTIFY_CONFLICT ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_ECONFLICT ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  checkout_conflict_count_cb ; 
 int /*<<< orphan*/  FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

void FUNC13(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_reference *head;
	git_object *obj;
	size_t conflicts = 0;

	FUNC0(g_repo, "master");

	FUNC4(FUNC10(&head, g_repo));
	FUNC4(FUNC9(&obj, head, GIT_OBJECT_COMMIT));

	FUNC4(FUNC11(g_repo, obj, GIT_RESET_HARD, NULL));

	FUNC5(FUNC12("testrepo/.git/index"));

	/* for a safe checkout, we should have checkout conflicts with
	 * the existing untracked files.
	 */
	opts.checkout_strategy &= ~GIT_CHECKOUT_FORCE;
	opts.notify_flags = GIT_CHECKOUT_NOTIFY_CONFLICT;
	opts.notify_cb = checkout_conflict_count_cb;
	opts.notify_payload = &conflicts;

	FUNC3(GIT_ECONFLICT, FUNC6(g_repo, obj, &opts));
	FUNC2(4, conflicts);

	/* but force should succeed and update the index */
	opts.checkout_strategy |= GIT_CHECKOUT_FORCE;
	FUNC4(FUNC6(g_repo, obj, &opts));

	FUNC1(g_repo, 0);

	FUNC7(obj);
	FUNC8(head);
}