#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_8__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_9__ {char* path; TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_2__ const*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 

void FUNC16(void)
{
	git_repository *repo;
	git_index *index;
	const git_index_entry *entry;
	git_index_entry new = {0};

	FUNC15("rename", 0700);

	FUNC4(FUNC13(&repo, "./rename", 0));
	FUNC4(FUNC12(&index, repo));

	FUNC3("./rename/lame.name.txt", "new_file\n");

	FUNC4(FUNC7(index, "lame.name.txt"));
	FUNC1(1, FUNC8(index));
	FUNC0((entry = FUNC10(index, "lame.name.txt", 0)));

	FUNC14(&new, entry, sizeof(git_index_entry));
	new.path = "LAME.name.TXT";

	FUNC4(FUNC6(index, &new));
	FUNC0((entry = FUNC10(index, "LAME.name.TXT", 0)));

	if (FUNC5(repo, "core.ignorecase"))
		FUNC1(1, FUNC8(index));
	else
		FUNC1(2, FUNC8(index));

	FUNC9(index);
	FUNC11(repo);

	FUNC2("rename");
}