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
 int /*<<< orphan*/  TEST_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
	git_config *config;
	git_buf buf = GIT_BUF_INIT;

	FUNC1(TEST_CONFIG, "");
	FUNC2(FUNC8(&config, TEST_CONFIG));

	FUNC2(FUNC9(config, "color.ui", "auto"));
	FUNC2(FUNC9(config, "core.editor", "ed"));

	FUNC6(config);

	FUNC2(FUNC8(&config, TEST_CONFIG));

	FUNC2(FUNC7(&buf, config, "color.ui"));
	FUNC0("auto", FUNC4(&buf));
	FUNC3(&buf);
	FUNC2(FUNC7(&buf, config, "core.editor"));
	FUNC0("ed", FUNC4(&buf));

	FUNC5(&buf);
	FUNC6(config);

	FUNC10(TEST_CONFIG);
}