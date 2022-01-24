#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {char* path; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  g_idx ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

void FUNC11(void)
{
	git_index_entry dummy = { 0 };
	const git_index_entry *entry;

	if (!FUNC5(g_repo, "core.ignorecase"))
		FUNC6();

	dummy.mode = GIT_FILEMODE_BLOB;
	FUNC3(FUNC10(&dummy.id, "f990a25a74d1a8281ce2ab018ea8df66795cd60b"));

	/* note that `git_index_add` does no checking to canonical directories */
	dummy.path = "Just_a_dir/file0.txt";
	FUNC3(FUNC7(g_idx, &dummy));

	dummy.path = "just_a_dir/fileA.txt";
	FUNC3(FUNC7(g_idx, &dummy));

	dummy.path = "Just_A_Dir/fileB.txt";
	FUNC3(FUNC7(g_idx, &dummy));

	dummy.path = "JUST_A_DIR/fileC.txt";
	FUNC3(FUNC7(g_idx, &dummy));

	dummy.path = "just_A_dir/fileD.txt";
	FUNC3(FUNC7(g_idx, &dummy));

	dummy.path = "JUST_a_DIR/fileE.txt";
	FUNC3(FUNC7(g_idx, &dummy));

	FUNC2("submod2/just_a_dir/file1.txt", "This is a file");
	FUNC2("submod2/just_a_dir/file2.txt", "This is another file");
	FUNC2("submod2/just_a_dir/file3.txt", "This is another file");
	FUNC2("submod2/just_a_dir/file4.txt", "And another file");

	FUNC3(FUNC8(g_idx, "just_a_dir/File1.txt"));
	FUNC3(FUNC8(g_idx, "JUST_A_DIR/file2.txt"));
	FUNC3(FUNC8(g_idx, "Just_A_Dir/FILE3.txt"));
	FUNC3(FUNC8(g_idx, "JusT_A_DIR/FILE4.txt"));

	FUNC0(entry = FUNC9(g_idx, "just_a_dir/File1.txt", 0));
	FUNC1("just_a_dir/File1.txt", entry->path);

	FUNC0(entry = FUNC9(g_idx, "JUST_A_DIR/file2.txt", 0));
	FUNC1("JUST_A_DIR/file2.txt", entry->path);

	FUNC0(entry = FUNC9(g_idx, "Just_A_Dir/FILE3.txt", 0));
	FUNC1("Just_A_Dir/FILE3.txt", entry->path);

	FUNC4("submod2/just_a_dir/file3.txt", "Rewritten");
	FUNC3(FUNC8(g_idx, "Just_A_Dir/file3.txt"));

	FUNC0(entry = FUNC9(g_idx, "Just_A_Dir/file3.txt", 0));
	FUNC1("Just_A_Dir/FILE3.txt", entry->path);
}