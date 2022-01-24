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
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_STASH_DEFAULT ; 
 int GIT_STATUS_INDEX_DELETED ; 
 int GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 
 int /*<<< orphan*/  stash_tip_oid ; 

void FUNC8(void)
{
	git_index *index;

	FUNC6(&index, repo);

	FUNC2(FUNC4(index, "who"));
	FUNC2(FUNC5(index));

	FUNC1(repo, "who", GIT_STATUS_WT_NEW | GIT_STATUS_INDEX_DELETED);

	FUNC2(FUNC7(&stash_tip_oid, repo, signature, NULL, GIT_STASH_DEFAULT));

	FUNC0("stash@{0}^0:who", "a0400d4954659306a976567af43125a0b1aa8595");
	FUNC0("stash@{0}^2:who", NULL);

	FUNC3(index);
}