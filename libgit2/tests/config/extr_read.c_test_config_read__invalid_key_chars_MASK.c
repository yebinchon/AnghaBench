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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clean_test_config ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char*) ; 

void FUNC6(void)
{
	git_config *cfg;

	FUNC3(&clean_test_config, NULL);
	FUNC1("./testconfig", "[foo]\n    has_underscore = git2\n");
	FUNC0(FUNC5(&cfg, "./testconfig"));

	FUNC2("./testconfig", "[foo]\n  has/slash = git2\n");
	FUNC0(FUNC5(&cfg, "./testconfig"));

	FUNC2("./testconfig", "[foo]\n  has+plus = git2\n");
	FUNC0(FUNC5(&cfg, "./testconfig"));

	FUNC2("./testconfig", "[no_key]\n  = git2\n");
	FUNC0(FUNC5(&cfg, "./testconfig"));

	FUNC4(cfg);
}