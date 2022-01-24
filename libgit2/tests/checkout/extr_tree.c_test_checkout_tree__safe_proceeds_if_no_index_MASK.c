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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_4__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

void FUNC12(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_oid oid;
	git_object *obj = NULL;

	FUNC0(g_repo, "master");
	FUNC3(FUNC11("testrepo/.git/index"));

	/* do second checkout safe because we should be clean after first */
	opts.checkout_strategy = GIT_CHECKOUT_SAFE;

	FUNC2(FUNC9(&oid, g_repo, "refs/heads/subtrees"));
	FUNC2(FUNC6(&obj, g_repo, &oid, GIT_OBJECT_ANY));

	FUNC2(FUNC4(g_repo, obj, &opts));
	FUNC2(FUNC10(g_repo, "refs/heads/subtrees"));

	FUNC1(FUNC8("testrepo/README"));
	FUNC1(FUNC8("testrepo/branch_file.txt"));
	FUNC1(FUNC8("testrepo/new.txt"));
	FUNC1(FUNC8("testrepo/ab/4.txt"));
	FUNC1(FUNC8("testrepo/ab/c/3.txt"));
	FUNC1(FUNC8("testrepo/ab/de/2.txt"));
	FUNC1(FUNC8("testrepo/ab/de/fgh/1.txt"));

	FUNC1(!FUNC7("testrepo/a"));

	FUNC0(g_repo, "subtrees");

	FUNC5(obj);
}