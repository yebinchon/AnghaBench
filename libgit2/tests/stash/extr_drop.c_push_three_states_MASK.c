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
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_STASH_INCLUDE_UNTRACKED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 

__attribute__((used)) static void FUNC9(void)
{
	git_oid oid;
	git_index *index;

	FUNC1("stash/zero.txt", "content\n");
	FUNC2(FUNC7(&index, repo));
	FUNC2(FUNC4(index, "zero.txt"));
	FUNC3(NULL, repo, signature, 0, "Initial commit");
	FUNC0(FUNC6("stash/zero.txt"));
	FUNC5(index);

	FUNC1("stash/one.txt", "content\n");
	FUNC2(FUNC8(
		&oid, repo, signature, "First", GIT_STASH_INCLUDE_UNTRACKED));
	FUNC0(!FUNC6("stash/one.txt"));
	FUNC0(FUNC6("stash/zero.txt"));

	FUNC1("stash/two.txt", "content\n");
	FUNC2(FUNC8(
		&oid, repo, signature, "Second", GIT_STASH_INCLUDE_UNTRACKED));
	FUNC0(!FUNC6("stash/two.txt"));
	FUNC0(FUNC6("stash/zero.txt"));

	FUNC1("stash/three.txt", "content\n");
	FUNC2(FUNC8(
		&oid, repo, signature, "Third", GIT_STASH_INCLUDE_UNTRACKED));
	FUNC0(!FUNC6("stash/three.txt"));
	FUNC0(FUNC6("stash/zero.txt"));
}