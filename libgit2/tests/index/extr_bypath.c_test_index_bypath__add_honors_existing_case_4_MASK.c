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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  g_idx ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

void FUNC12(void)
{
	git_index_entry dummy = { 0 };
	const git_index_entry *entry;

	if (!FUNC5(g_repo, "core.ignorecase"))
		FUNC6();

	dummy.mode = GIT_FILEMODE_BLOB;
	FUNC3(FUNC10(&dummy.id, "f990a25a74d1a8281ce2ab018ea8df66795cd60b"));

	dummy.path = "just_a_dir/a/b/c/d/e/file1.txt";
	FUNC3(FUNC7(g_idx, &dummy));

	dummy.path = "just_a_dir/a/B/C/D/E/file2.txt";
	FUNC3(FUNC7(g_idx, &dummy));

	FUNC4(FUNC11("submod2/just_a_dir/a", 0777));
	FUNC4(FUNC11("submod2/just_a_dir/a/b", 0777));
	FUNC4(FUNC11("submod2/just_a_dir/a/b/z", 0777));
	FUNC4(FUNC11("submod2/just_a_dir/a/b/z/y", 0777));
	FUNC4(FUNC11("submod2/just_a_dir/a/b/z/y/x", 0777));

	FUNC2("submod2/just_a_dir/a/b/z/y/x/FOO.txt", "This is a file");

	FUNC3(FUNC8(g_idx, "just_a_dir/A/b/Z/y/X/foo.txt"));

	FUNC0(entry = FUNC9(g_idx, "just_a_dir/A/b/Z/y/X/foo.txt", 0));
	FUNC1("just_a_dir/a/b/Z/y/X/foo.txt", entry->path);
}