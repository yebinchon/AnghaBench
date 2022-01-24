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
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOMERGEABLE_IDSTR ; 
 int /*<<< orphan*/  TEST_REPO_PATH ; 
 int /*<<< orphan*/  automergeable_id ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void)
{
    git_config *cfg;

    repo = FUNC1(TEST_REPO_PATH);
    FUNC7(&repo_index, repo);

	FUNC5(&automergeable_id, AUTOMERGEABLE_IDSTR);

    /* Ensure that the user's merge.conflictstyle doesn't interfere */
    FUNC0(FUNC6(&cfg, repo));

    FUNC0(FUNC4(cfg, "merge.conflictstyle", "merge"));
    FUNC0(FUNC3(cfg, "core.autocrlf", false));

	FUNC8();

    FUNC2(cfg);
}