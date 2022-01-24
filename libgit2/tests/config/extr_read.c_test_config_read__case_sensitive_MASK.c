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
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
	git_config *cfg;
	int i;

	FUNC3(FUNC10(&cfg, FUNC2("config/config1")));

	FUNC3(FUNC9(&buf, cfg, "this.that.other"));
	FUNC1("true", FUNC6(&buf));
	FUNC5(&buf);

	FUNC3(FUNC9(&buf, cfg, "this.That.other"));
	FUNC1("yes", FUNC6(&buf));

	FUNC3(FUNC8(&i, cfg, "this.that.other"));
	FUNC0(i == 1);
	FUNC3(FUNC8(&i, cfg, "this.That.other"));
	FUNC0(i == 1);

	/* This one doesn't exist */
	FUNC4(FUNC8(&i, cfg, "this.thaT.other"));

	FUNC7(cfg);
}