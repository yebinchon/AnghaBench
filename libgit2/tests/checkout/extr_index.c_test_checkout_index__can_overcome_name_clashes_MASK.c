#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int GIT_CHECKOUT_ALLOW_CONFLICTS ; 
 int GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int GIT_CHECKOUT_RECREATE_MISSING ; 
 int GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

void FUNC12(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_index *index;

	FUNC2(FUNC9(&index, g_repo));
	FUNC6(index);

	FUNC1("./testrepo/path0", "content\r\n");
	FUNC2(FUNC10("./testrepo/path1", 0777));
	FUNC1("./testrepo/path1/file1", "content\r\n");

	FUNC2(FUNC5(index, "path0"));
	FUNC2(FUNC5(index, "path1/file1"));

	FUNC2(FUNC11("./testrepo/path0"));
	FUNC2(FUNC4(
		"./testrepo/path1", NULL, GIT_RMDIR_REMOVE_FILES));

	FUNC1("./testrepo/path1", "content\r\n");
	FUNC2(FUNC10("./testrepo/path0", 0777));
	FUNC1("./testrepo/path0/file0", "content\r\n");

	FUNC0(FUNC8("./testrepo/path1"));
	FUNC0(FUNC8("./testrepo/path0/file0"));

	opts.checkout_strategy =
		GIT_CHECKOUT_SAFE |
		GIT_CHECKOUT_RECREATE_MISSING |
		GIT_CHECKOUT_ALLOW_CONFLICTS;
	FUNC2(FUNC3(g_repo, index, &opts));

	FUNC0(FUNC8("./testrepo/path1"));
	FUNC0(FUNC8("./testrepo/path0/file0"));

	opts.checkout_strategy = GIT_CHECKOUT_FORCE;
	FUNC2(FUNC3(g_repo, index, &opts));

	FUNC0(FUNC8("./testrepo/path0"));
	FUNC0(FUNC8("./testrepo/path1/file1"));

	FUNC7(index);
}