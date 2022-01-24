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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int*,int /*<<< orphan*/ *,char*) ; 

void FUNC10(void)
{
    git_repository *repo = FUNC2("status");
    unsigned int status;
    git_index *index;

    FUNC4(repo, "core.ignorecase", false);

	repo = FUNC3();

    /* Actually returns GIT_STATUS_IGNORED on Windows */
    FUNC0(FUNC9(&status, repo, "NEW_FILE"), GIT_ENOTFOUND);

    FUNC1(FUNC8(&index, repo));

    FUNC1(FUNC5(index, "new_file"));
    FUNC1(FUNC7(index));
    FUNC6(index);

    /* Actually returns GIT_STATUS_IGNORED on Windows */
    FUNC0(FUNC9(&status, repo, "NEW_FILE"), GIT_ENOTFOUND);
}