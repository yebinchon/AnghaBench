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
struct TYPE_4__ {int /*<<< orphan*/ * strings; int /*<<< orphan*/  count; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  _remote_name ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

void FUNC10(void)
{
	git_config *config;
	git_remote *remote;
	git_strarray problems = {0};

	FUNC3(FUNC8(&config, _repo));
	FUNC3(FUNC4(config, "remote.test.fetch", "+refs/*:refs/*"));
	FUNC3(FUNC6(&remote, _repo, "test"));
	FUNC5(remote);

	FUNC3(FUNC7(&problems, _repo, _remote_name, "just/renamed"));
	FUNC1(1, problems.count);
	FUNC2("+refs/*:refs/*", problems.strings[0]);
	FUNC9(&problems);

	FUNC0(_repo, "remote.just/renamed.fetch", "+refs/*:refs/*");

	FUNC9(&problems);
}