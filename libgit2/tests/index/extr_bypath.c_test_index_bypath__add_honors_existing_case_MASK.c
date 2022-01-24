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
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  g_idx ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	const git_index_entry *entry;

	if (!FUNC5(g_repo, "core.ignorecase"))
		FUNC6();

	FUNC2("submod2/just_a_dir/file1.txt", "This is a file");
	FUNC2("submod2/just_a_dir/file2.txt", "This is another file");
	FUNC2("submod2/just_a_dir/file3.txt", "This is another file");
	FUNC2("submod2/just_a_dir/file4.txt", "And another file");

	FUNC3(FUNC7(g_idx, "just_a_dir/File1.txt"));
	FUNC3(FUNC7(g_idx, "JUST_A_DIR/file2.txt"));
	FUNC3(FUNC7(g_idx, "Just_A_Dir/FILE3.txt"));

	FUNC0(entry = FUNC8(g_idx, "just_a_dir/File1.txt", 0));
	FUNC1("just_a_dir/File1.txt", entry->path);

	FUNC0(entry = FUNC8(g_idx, "JUST_A_DIR/file2.txt", 0));
	FUNC1("just_a_dir/file2.txt", entry->path);

	FUNC0(entry = FUNC8(g_idx, "Just_A_Dir/FILE3.txt", 0));
	FUNC1("just_a_dir/FILE3.txt", entry->path);

	FUNC4("submod2/just_a_dir/file3.txt", "Rewritten");
	FUNC3(FUNC7(g_idx, "Just_A_Dir/file3.txt"));

	FUNC0(entry = FUNC8(g_idx, "Just_A_Dir/file3.txt", 0));
	FUNC1("just_a_dir/FILE3.txt", entry->path);
}