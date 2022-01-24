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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_EINVALIDSPEC ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_nosection_cb ; 

void FUNC9(void)
{
	git_config *cfg;
	git_buf buf = GIT_BUF_INIT;
	int seen = 0;

	FUNC3(FUNC8(&cfg, FUNC1("config/config-nosection")));

	/*
	 * Given a key with no section, we do not allow reading it,
	 * but we do include it in an iteration over the config
	 * store. This appears to match how git's own APIs (and
	 * git-config(1)) behave.
	 */

	FUNC2(FUNC7(&buf, cfg, "key"), GIT_EINVALIDSPEC);

	FUNC3(FUNC5(cfg, read_nosection_cb, &seen));
	FUNC0(seen, 1);

	FUNC4(&buf);
	FUNC6(cfg);
}