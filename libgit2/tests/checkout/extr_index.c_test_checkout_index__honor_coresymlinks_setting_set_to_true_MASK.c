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
struct TYPE_4__ {int checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int GIT_CHECKOUT_RECREATE_MISSING ; 
 int GIT_CHECKOUT_SAFE ; 
 int GIT_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 size_t FUNC8 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void FUNC10(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	char link_data[GIT_PATH_MAX];
	size_t link_size = GIT_PATH_MAX;

	if (!FUNC7("testrepo/test")) {
		FUNC5();
	}

	FUNC4(g_repo, "core.symlinks", true);

	opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_RECREATE_MISSING;

	FUNC3(FUNC6(g_repo, NULL, &opts));

	link_size = FUNC8("./testrepo/link_to_new.txt", link_data, link_size);
	link_data[link_size] = '\0';
	FUNC1(link_size, FUNC9("new.txt"));
	FUNC2(link_data, "new.txt");
	FUNC0("./testrepo/link_to_new.txt", "my new file\n");
}