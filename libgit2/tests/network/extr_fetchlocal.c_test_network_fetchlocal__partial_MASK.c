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
struct TYPE_8__ {int* payload; int /*<<< orphan*/  transfer_progress; } ;
struct TYPE_10__ {TYPE_1__ callbacks; } ;
typedef  TYPE_3__ git_fetch_options ;

/* Variables and functions */
 TYPE_3__ GIT_FETCH_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_REMOTE_ORIGIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  transfer_cb ; 

void FUNC10(void)
{
	git_repository *repo = FUNC4("partial-testrepo");
	git_remote *origin;
	int callcount = 0;
	git_strarray refnames = {0};
	const char *url;
	git_fetch_options options = GIT_FETCH_OPTIONS_INIT;

	options.callbacks.transfer_progress = transfer_cb;
	options.callbacks.payload = &callcount;

	FUNC3(FUNC5(&refnames, repo));
	FUNC1(1, (int)refnames.count);

	url = FUNC2("testrepo.git");
	FUNC3(FUNC6(&origin, repo, GIT_REMOTE_ORIGIN, url));
	FUNC3(FUNC7(origin, NULL, &options, NULL));

	FUNC9(&refnames);

	FUNC3(FUNC5(&refnames, repo));
	FUNC1(20, (int)refnames.count); /* 18 remote + 1 local */
	FUNC0(callcount > 0);

	FUNC9(&refnames);
	FUNC8(origin);
}