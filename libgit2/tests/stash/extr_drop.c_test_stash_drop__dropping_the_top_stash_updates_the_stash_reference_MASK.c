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
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
	git_object *next_top_stash;
	git_oid oid;

	FUNC8();

	FUNC9(&oid);

	FUNC2(FUNC6(&next_top_stash, repo, "stash@{1}"));
	FUNC0(FUNC5(&oid, FUNC4(next_top_stash)));

	FUNC2(FUNC7(repo, 0));

	FUNC9(&oid);

	FUNC1(&oid, FUNC4(next_top_stash));

	FUNC3(next_top_stash);
}