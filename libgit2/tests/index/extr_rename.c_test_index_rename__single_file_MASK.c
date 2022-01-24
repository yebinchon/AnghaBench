#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (size_t*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 

void FUNC17(void)
{
	git_repository *repo;
	git_index *index;
	size_t position;
	git_oid expected;
	const git_index_entry *entry;

	FUNC15("rename", 0700);

	FUNC4(FUNC14(&repo, "./rename", 0));
	FUNC4(FUNC13(&index, repo));

	FUNC0(FUNC6(index) == 0);

	FUNC3("./rename/lame.name.txt", "new_file\n");

	/* This should add a new blob to the object database in 'd4/fa8600b4f37d7516bef4816ae2c64dbf029e3a' */
	FUNC4(FUNC5(index, "lame.name.txt"));
	FUNC0(FUNC6(index) == 1);

	FUNC4(FUNC11(&expected, "d4fa8600b4f37d7516bef4816ae2c64dbf029e3a"));

	FUNC0(!FUNC7(&position, index, "lame.name.txt"));

	entry = FUNC9(index, position);
	FUNC1(&expected, &entry->id);

	/* This removes the entry from the index, but not from the object database */
	FUNC4(FUNC10(index, "lame.name.txt", 0));
	FUNC0(FUNC6(index) == 0);

	FUNC16("./rename/lame.name.txt", "./rename/fancy.name.txt");

	FUNC4(FUNC5(index, "fancy.name.txt"));
	FUNC0(FUNC6(index) == 1);

	FUNC0(!FUNC7(&position, index, "fancy.name.txt"));

	entry = FUNC9(index, position);
	FUNC1(&expected, &entry->id);

	FUNC8(index);
	FUNC12(repo);

	FUNC2("rename");
}