#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char** strings; int count; } ;
struct TYPE_6__ {int checkout_strategy; TYPE_1__ paths; } ;
typedef  TYPE_2__ git_checkout_options ;

/* Variables and functions */
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int GIT_CHECKOUT_RECREATE_MISSING ; 
 int GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	char *entries[] = { "*.txt" };

	opts.paths.strings = entries;
	opts.paths.count = 1;

	FUNC1(false, FUNC4("./testrepo/README"));
	FUNC1(false, FUNC4("./testrepo/branch_file.txt"));
	FUNC1(false, FUNC4("./testrepo/new.txt"));

	opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_RECREATE_MISSING;

	FUNC2(FUNC3(g_repo, NULL, &opts));

	FUNC1(false, FUNC4("./testrepo/README"));
	FUNC0("./testrepo/branch_file.txt", "hi\nbye!\n");
	FUNC0("./testrepo/new.txt", "my new file\n");
}