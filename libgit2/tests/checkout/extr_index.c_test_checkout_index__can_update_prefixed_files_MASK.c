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
 int GIT_CHECKOUT_REMOVE_UNTRACKED ; 
 int GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

void FUNC9(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

	FUNC2(false, FUNC7("./testrepo/README"));
	FUNC2(false, FUNC7("./testrepo/branch_file.txt"));
	FUNC2(false, FUNC7("./testrepo/new.txt"));

	FUNC3("./testrepo/READ", "content\n");
	FUNC3("./testrepo/README.after", "content\n");
	FUNC4(FUNC8("./testrepo/branch_file", 0777));
	FUNC4(FUNC8("./testrepo/branch_file/contained_dir", 0777));
	FUNC3("./testrepo/branch_file/contained_file", "content\n");
	FUNC4(FUNC8("./testrepo/branch_file.txt.after", 0777));

	opts.checkout_strategy =
		GIT_CHECKOUT_SAFE |
		GIT_CHECKOUT_RECREATE_MISSING |
		GIT_CHECKOUT_REMOVE_UNTRACKED;

	FUNC4(FUNC5(g_repo, NULL, &opts));

	/* remove untracked will remove the .gitattributes file before the blobs
	 * were created, so they will have had crlf filtering applied on Windows
	 */
	FUNC0("./testrepo/README", "hey there\n");
	FUNC0("./testrepo/branch_file.txt", "hi\nbye!\n");
	FUNC0("./testrepo/new.txt", "my new file\n");

	FUNC1(!FUNC6("testrepo/READ"));
	FUNC1(!FUNC6("testrepo/README.after"));
	FUNC1(!FUNC6("testrepo/branch_file"));
	FUNC1(!FUNC6("testrepo/branch_file.txt.after"));
}