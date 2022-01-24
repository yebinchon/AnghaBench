#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_RESET_SOFT ; 
 int /*<<< orphan*/  KNOWN_COMMIT_IN_BARE_REPO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  target ; 

__attribute__((used)) static void FUNC8(bool should_be_detached)
{
	git_oid oid;

	FUNC2(FUNC4(&oid, repo, "HEAD"));
	FUNC1(FUNC3(&oid, KNOWN_COMMIT_IN_BARE_REPO));
	FUNC2(FUNC7(&target, repo, KNOWN_COMMIT_IN_BARE_REPO));

	FUNC0(FUNC5(repo) == should_be_detached);

	FUNC2(FUNC6(repo, target, GIT_RESET_SOFT, NULL));

	FUNC0(FUNC5(repo) == should_be_detached);

	FUNC2(FUNC4(&oid, repo, "HEAD"));
	FUNC2(FUNC3(&oid, KNOWN_COMMIT_IN_BARE_REPO));
}