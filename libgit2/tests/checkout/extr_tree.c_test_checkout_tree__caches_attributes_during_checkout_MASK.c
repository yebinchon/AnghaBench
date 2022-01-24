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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_9__ {char** strings; int count; } ;
struct TYPE_10__ {TYPE_1__ paths; int /*<<< orphan*/  checkout_strategy; int /*<<< orphan*/  progress_cb; } ;
typedef  TYPE_2__ git_checkout_options ;
struct TYPE_11__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  update_attr_callback ; 

void FUNC9(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_oid oid;
	git_object *obj = NULL;
	git_buf ident1 = GIT_BUF_INIT, ident2 = GIT_BUF_INIT;
	char *ident_paths[] = { "ident1.txt", "ident2.txt" };

	opts.progress_cb = update_attr_callback;

	FUNC0(g_repo, "master");
	opts.checkout_strategy = GIT_CHECKOUT_FORCE;
	opts.paths.strings = ident_paths;
	opts.paths.count = 2;

	FUNC2(FUNC8(&oid, g_repo, "refs/heads/ident"));
	FUNC2(FUNC7(&obj, g_repo, &oid, GIT_OBJECT_ANY));

	FUNC2(FUNC4(g_repo, obj, &opts));

	FUNC2(FUNC5(&ident1, "testrepo/ident1.txt"));
	FUNC2(FUNC5(&ident2, "testrepo/ident2.txt"));

	FUNC1(ident1.ptr, "# $Id$", 6);
	FUNC1(ident2.ptr, "# $Id$", 6);

	FUNC2(FUNC4(g_repo, obj, &opts));

	FUNC2(FUNC5(&ident1, "testrepo/ident1.txt"));
	FUNC2(FUNC5(&ident2, "testrepo/ident2.txt"));

	FUNC1(ident1.ptr, "# $Id: ", 7);
	FUNC1(ident2.ptr, "# $Id: ", 7);

	FUNC3(&ident1);
	FUNC3(&ident2);
	FUNC6(obj);
}