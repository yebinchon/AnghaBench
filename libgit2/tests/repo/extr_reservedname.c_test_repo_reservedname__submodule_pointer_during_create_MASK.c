#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_submodule_update_options ;
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_SUBMODULE_UPDATE_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 

void FUNC9(void)
{
	git_repository *repo;
	git_submodule *sm;
	git_submodule_update_options update_options = GIT_SUBMODULE_UPDATE_OPTIONS_INIT;
	git_buf url = GIT_BUF_INIT;

	repo = FUNC8();

	FUNC0(FUNC4(&url, FUNC2(), "sub.git"));
	FUNC1(repo, "submodule.sub.url", url.ptr);

	FUNC0(FUNC6(&sm, repo, "sub"));
	FUNC0(FUNC7(sm, 1, &update_options));

	FUNC5(sm);
	FUNC3(&url);
}