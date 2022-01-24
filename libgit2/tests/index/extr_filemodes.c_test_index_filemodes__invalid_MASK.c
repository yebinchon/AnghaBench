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
struct TYPE_6__ {char* path; int /*<<< orphan*/  mode; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
	git_index *index;
	git_index_entry entry;
	const git_index_entry *dummy;

	FUNC4(FUNC10(&index, g_repo));

	/* add a dummy file so that we have a valid id */
	FUNC3("./filemodes/dummy-file.txt", "new-file\n");
	FUNC4(FUNC6(index, "dummy-file.txt"));
	FUNC1((dummy = FUNC8(index, "dummy-file.txt", 0)));

	FUNC0(&entry, 0);
	entry.path = "foo";
	entry.mode = GIT_OBJECT_BLOB;
	FUNC9(&entry.id, &dummy->id);
	FUNC2(FUNC5(index, &entry));

	entry.mode = GIT_FILEMODE_BLOB;
	FUNC4(FUNC5(index, &entry));

	FUNC7(index);
}