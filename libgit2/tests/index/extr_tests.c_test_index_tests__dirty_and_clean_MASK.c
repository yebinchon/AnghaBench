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
struct TYPE_5__ {char* path; int /*<<< orphan*/  mode; TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 

void FUNC12(void)
{
	git_repository *repo;
	git_index *index;
	git_index_entry entry = {0};

	/* Index is not dirty after opening */
	FUNC1(FUNC11(&repo, "./myrepo", 0));
	FUNC1(FUNC10(&index, repo));

	FUNC0(FUNC3(index) == 0);
	FUNC0(!FUNC5(index));

	/* Index is dirty after adding an entry */
	entry.mode = GIT_FILEMODE_BLOB;
	entry.path = "test.txt";
	FUNC1(FUNC2(index, &entry, "Hi.\n", 4));
	FUNC0(FUNC3(index) == 1);
	FUNC0(FUNC5(index));

	/* Index is not dirty after write */
	FUNC1(FUNC8(index));
	FUNC0(!FUNC5(index));

	/* Index is dirty after removing an entry */
	FUNC1(FUNC7(index, "test.txt"));
	FUNC0(FUNC3(index) == 0);
	FUNC0(FUNC5(index));

	/* Index is not dirty after write */
	FUNC1(FUNC8(index));
	FUNC0(!FUNC5(index));

	/* Index remains not dirty after read */
	FUNC1(FUNC6(index, 0));
	FUNC0(!FUNC5(index));

	/* Index is dirty when we do an unforced read with dirty content */
	FUNC1(FUNC2(index, &entry, "Hi.\n", 4));
	FUNC0(FUNC3(index) == 1);
	FUNC0(FUNC5(index));

	FUNC1(FUNC6(index, 0));
	FUNC0(FUNC5(index));

	/* Index is clean when we force a read with dirty content */
	FUNC1(FUNC6(index, 1));
	FUNC0(!FUNC5(index));

	FUNC4(index);
	FUNC9(repo);
}