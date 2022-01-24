#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_3__ {int /*<<< orphan*/  checkout_strategy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_NONE ; 
 int /*<<< orphan*/  GIT_CHECKOUT_OPTIONS_VERSION ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 TYPE_1__ checkout_opts ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  obj ; 
 int /*<<< orphan*/  repo ; 

void FUNC9(void)
{
	git_oid id;
	git_config *cfg;
	int icase = 0;

	repo = FUNC1("testrepo");

	FUNC0(FUNC8(&cfg, repo));
	FUNC5(&icase, cfg, "core.ignorecase");
	FUNC4(cfg);

	if (!icase)
		FUNC2();

	FUNC0(FUNC7(&id, repo, "refs/heads/dir"));
	FUNC0(FUNC6(&obj, repo, &id, GIT_OBJECT_ANY));

	FUNC3(&checkout_opts, GIT_CHECKOUT_OPTIONS_VERSION);
	checkout_opts.checkout_strategy = GIT_CHECKOUT_NONE;
}