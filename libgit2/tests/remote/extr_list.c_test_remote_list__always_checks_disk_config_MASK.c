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
struct TYPE_4__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;

/* Variables and functions */
 int /*<<< orphan*/  TEST_URL ; 
 int /*<<< orphan*/ * _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9(void)
{
	git_repository *repo;
	git_strarray remotes;
	git_remote *remote;

	FUNC1(FUNC6(&repo, FUNC7(_repo)));

	FUNC1(FUNC4(&remotes, _repo));
	FUNC0(remotes.count, 1);
	FUNC8(&remotes);

	FUNC1(FUNC2(&remote, _repo, "valid-name", TEST_URL));

	FUNC1(FUNC4(&remotes, _repo));
	FUNC0(remotes.count, 2);
	FUNC8(&remotes);

	FUNC1(FUNC4(&remotes, repo));
	FUNC0(remotes.count, 2);
	FUNC8(&remotes);

	FUNC5(repo);
	FUNC3(remote);
}