#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {char* path; void* mode; TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EINDEXDIRTY ; 
 void* GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  GIT_OPT_ENABLE_UNSAVED_INDEX_SAFETY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

void FUNC11(void)
{
	git_repository *repo;
	git_index *index;
	git_index_entry entry = {0};

	/* Index is not dirty after opening */
	repo = FUNC4("testrepo");
	FUNC2(FUNC10(&index, repo));

	/* Index is dirty after adding an entry */
	entry.mode = GIT_FILEMODE_BLOB;
	entry.path = "test.txt";
	FUNC2(FUNC6(index, &entry, "Hi.\n", 4));
	FUNC0(FUNC8(index));

	FUNC2(FUNC5(repo, NULL));

	/* Index is dirty (again) after adding an entry */
	entry.mode = GIT_FILEMODE_BLOB;
	entry.path = "test.txt";
	FUNC2(FUNC6(index, &entry, "Hi.\n", 4));
	FUNC0(FUNC8(index));

	FUNC2(FUNC9(GIT_OPT_ENABLE_UNSAVED_INDEX_SAFETY, 1));
	FUNC1(GIT_EINDEXDIRTY, FUNC5(repo, NULL));

	FUNC7(index);
	FUNC3();
}