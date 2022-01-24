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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*) ; 

void FUNC8(void)
{
	const char *file_name  = "config-empty-value";
	git_config *cfg;
	git_buf newfile = GIT_BUF_INIT;

	/* Write the test config and make sure the expected entry exists */
	FUNC1(file_name, "[section \"foo\"]\n\tname\n");
	FUNC2(FUNC5(&cfg, file_name));
	FUNC2(FUNC6(cfg, "newsection.newname", "new_value"));
	FUNC2(FUNC6(cfg, "section.foo.other", "otherval"));

	FUNC2(FUNC7(&newfile, file_name));
	FUNC0("[section \"foo\"]\n\tname\n\tother = otherval\n[newsection]\n\tnewname = new_value\n", newfile.ptr);

	FUNC3(&newfile);
	FUNC4(cfg);
}