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
struct checkout_cancel_at {char* filename; int error; scalar_t__ count; } ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_4__ {int /*<<< orphan*/  checkout_strategy; struct checkout_cancel_at* notify_payload; int /*<<< orphan*/  notify_cb; int /*<<< orphan*/  notify_flags; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 int /*<<< orphan*/  GIT_CHECKOUT_NOTIFY_UPDATED ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  checkout_cancel_cb ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

void FUNC10(void)
{
	struct checkout_cancel_at ca;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_oid oid;
	git_object *obj = NULL;

	FUNC0(g_repo, "master");

	FUNC4(FUNC9(&oid, g_repo, "refs/heads/dir"));
	FUNC4(FUNC7(&obj, g_repo, &oid, GIT_OBJECT_ANY));

	ca.filename = "new.txt";
	ca.error = -5555;
	ca.count = 0;

	opts.notify_flags = GIT_CHECKOUT_NOTIFY_UPDATED;
	opts.notify_cb = checkout_cancel_cb;
	opts.notify_payload = &ca;
	opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	FUNC1(!FUNC8("testrepo/new.txt"));

	FUNC3(FUNC5(g_repo, obj, &opts), -5555);

	FUNC1(!FUNC8("testrepo/new.txt"));

	/* on case-insensitive FS = a/b.txt, branch_file.txt, new.txt */
	/* on case-sensitive FS   = README, then above */

	if (FUNC8("testrepo/.git/CoNfIg")) /* case insensitive */
		FUNC2(3, ca.count);
	else
		FUNC2(4, ca.count);

	/* and again with a different stopping point and return code */
	ca.filename = "README";
	ca.error = 123;
	ca.count = 0;

	FUNC3(FUNC5(g_repo, obj, &opts), 123);

	FUNC1(!FUNC8("testrepo/new.txt"));

	if (FUNC8("testrepo/.git/CoNfIg")) /* case insensitive */
		FUNC2(4, ca.count);
	else
		FUNC2(1, ca.count);

	FUNC6(obj);
}