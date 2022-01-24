#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  new_entry ;
struct TYPE_7__ {char* path; void* mode; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 void* GIT_FILEMODE_BLOB ; 
 void* GIT_FILEMODE_BLOB_EXECUTABLE ; 
 void* GIT_FILEMODE_COMMIT ; 
 void* GIT_FILEMODE_LINK ; 
 void* GIT_FILEMODE_TREE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

void FUNC12(void)
{
	git_index *index;
	git_index_entry new_entry;
	const git_index_entry *ret_entry;
	const char *content = "hey there\n";

	FUNC10(&new_entry, 0, sizeof(new_entry));
	FUNC5(FUNC9(&index, g_repo));

	/* regular blob */
	new_entry.path = "dummy-file.txt";
	new_entry.mode = GIT_FILEMODE_BLOB;

	FUNC5(FUNC6(index,
		&new_entry, content, FUNC11(content)));

	FUNC0((ret_entry = FUNC8(index, "dummy-file.txt", 0)));
	FUNC3("dummy-file.txt", ret_entry->path);
	FUNC1(GIT_FILEMODE_BLOB, ret_entry->mode);

	/* executable blob */
	new_entry.path = "dummy-file.txt";
	new_entry.mode = GIT_FILEMODE_BLOB_EXECUTABLE;

	FUNC5(FUNC6(index,
		&new_entry, content, FUNC11(content)));

	FUNC0((ret_entry = FUNC8(index, "dummy-file.txt", 0)));
	FUNC3("dummy-file.txt", ret_entry->path);
	FUNC1(GIT_FILEMODE_BLOB_EXECUTABLE, ret_entry->mode);

	/* links are also acceptable */
	new_entry.path = "dummy-link.txt";
	new_entry.mode = GIT_FILEMODE_LINK;

	FUNC5(FUNC6(index,
		&new_entry, content, FUNC11(content)));

	FUNC0((ret_entry = FUNC8(index, "dummy-link.txt", 0)));
	FUNC3("dummy-link.txt", ret_entry->path);
	FUNC1(GIT_FILEMODE_LINK, ret_entry->mode);

	/* trees are rejected */
	new_entry.path = "invalid_mode.txt";
	new_entry.mode = GIT_FILEMODE_TREE;

	FUNC4(FUNC6(index,
		&new_entry, content, FUNC11(content)));
	FUNC2(NULL, FUNC8(index, "invalid_mode.txt", 0));

	/* submodules are rejected */
	new_entry.path = "invalid_mode.txt";
	new_entry.mode = GIT_FILEMODE_COMMIT;

	FUNC4(FUNC6(index,
		&new_entry, content, FUNC11(content)));
	FUNC2(NULL, FUNC8(index, "invalid_mode.txt", 0));

	FUNC7(index);
}