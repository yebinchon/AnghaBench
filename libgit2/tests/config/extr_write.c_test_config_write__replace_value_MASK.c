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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC9(void)
{
	git_config *cfg;
	int i;
	int64_t l, expected = +9223372036854775803;

	/* By freeing the config, we make sure we flush the values  */
	FUNC1(FUNC6(&cfg, "config9"));
	FUNC1(FUNC7(cfg, "core.dummy", 5));
	FUNC3(cfg);

	FUNC1(FUNC6(&cfg, "config9"));
	FUNC1(FUNC4(&i, cfg, "core.dummy"));
	FUNC0(i == 5);
	FUNC3(cfg);

	FUNC1(FUNC6(&cfg, "config9"));
	FUNC1(FUNC7(cfg, "core.dummy", 1));
	FUNC3(cfg);

	FUNC1(FUNC6(&cfg, "config9"));
	FUNC1(FUNC8(cfg, "core.verylong", expected));
	FUNC3(cfg);

	FUNC1(FUNC6(&cfg, "config9"));
	FUNC1(FUNC5(&l, cfg, "core.verylong"));
	FUNC0(l == expected);
	FUNC3(cfg);

	FUNC1(FUNC6(&cfg, "config9"));
	FUNC2(FUNC4(&i, cfg, "core.verylong"));
	FUNC3(cfg);

	FUNC1(FUNC6(&cfg, "config9"));
	FUNC1(FUNC8(cfg, "core.verylong", 1));
	FUNC3(cfg);
}