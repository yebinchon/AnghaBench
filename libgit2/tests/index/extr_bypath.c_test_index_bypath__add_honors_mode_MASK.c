#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* path; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB_EXECUTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_idx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
	const git_index_entry *entry;
	git_index_entry new_entry;

	FUNC0((entry = FUNC7(g_idx, "README.txt", 0)) != NULL);

	FUNC9(&new_entry, entry, sizeof(git_index_entry));
	new_entry.path = "README.txt";
	new_entry.mode = GIT_FILEMODE_BLOB_EXECUTABLE;

	FUNC4(FUNC10("submod2/README.txt", GIT_FILEMODE_BLOB_EXECUTABLE));

	FUNC2(FUNC5(g_idx, &new_entry));
	FUNC2(FUNC8(g_idx));

	FUNC3("submod2/README.txt", "Modified but still executable");

	FUNC2(FUNC6(g_idx, "README.txt"));
	FUNC2(FUNC8(g_idx));

	FUNC0((entry = FUNC7(g_idx, "README.txt", 0)) != NULL);
	FUNC1(GIT_FILEMODE_BLOB_EXECUTABLE, entry->mode);
}