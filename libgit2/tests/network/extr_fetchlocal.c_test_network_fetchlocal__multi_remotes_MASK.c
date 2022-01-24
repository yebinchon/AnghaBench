#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ count; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;
struct TYPE_8__ {int /*<<< orphan*/  transfer_progress; } ;
struct TYPE_10__ {TYPE_1__ callbacks; } ;
typedef  TYPE_3__ git_fetch_options ;

/* Variables and functions */
 TYPE_3__ GIT_FETCH_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  transfer_cb ; 

void FUNC10(void)
{
	git_repository *repo = FUNC3("testrepo.git");
	git_remote *test, *test2;
	git_strarray refnames = {0};
	git_fetch_options options = GIT_FETCH_OPTIONS_INIT;

	options.callbacks.transfer_progress = transfer_cb;
	FUNC2(FUNC8(repo, "test", FUNC1("testrepo.git")));
	FUNC2(FUNC7(&test, repo, "test"));
	FUNC2(FUNC5(test, NULL, &options, NULL));

	FUNC2(FUNC4(&refnames, repo));
	FUNC0(33, (int)refnames.count);
	FUNC9(&refnames);

	FUNC2(FUNC8(repo, "test_with_pushurl", FUNC1("testrepo.git")));
	FUNC2(FUNC7(&test2, repo, "test_with_pushurl"));
	FUNC2(FUNC5(test2, NULL, &options, NULL));

	FUNC2(FUNC4(&refnames, repo));
	FUNC0(45, (int)refnames.count);

	FUNC9(&refnames);
	FUNC6(test);
	FUNC6(test2);
}