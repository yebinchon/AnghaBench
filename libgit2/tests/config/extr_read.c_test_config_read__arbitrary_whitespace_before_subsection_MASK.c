#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clean_test_config ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char*) ; 

void FUNC8(void)
{
	git_buf buf = GIT_BUF_INIT;
	git_config *cfg;

	FUNC3(&clean_test_config, NULL);
	FUNC1("./testconfig", "[some \t \"subsection\"]\n var = value\n");
	FUNC2(FUNC7(&cfg, "./testconfig"));
	FUNC2(FUNC6(&buf, cfg, "some.subsection.var"));
	FUNC0(buf.ptr, "value");

	FUNC5(cfg);
	FUNC4(&buf);
}