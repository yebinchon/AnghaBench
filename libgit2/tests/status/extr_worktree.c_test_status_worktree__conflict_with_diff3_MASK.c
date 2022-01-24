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
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_6__ {char* path; int mode; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_STATUS_CONFLICTED ; 
 int /*<<< orphan*/  GIT_STATUS_WT_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int) ; 

void FUNC11(void)
{
	git_repository *repo = FUNC2("status");
	git_index *index;
	unsigned int status;
	git_index_entry ancestor_entry, our_entry, their_entry;

	FUNC10(&ancestor_entry, 0x0, sizeof(git_index_entry));
	FUNC10(&our_entry, 0x0, sizeof(git_index_entry));
	FUNC10(&their_entry, 0x0, sizeof(git_index_entry));

	ancestor_entry.path = "modified_file";
	ancestor_entry.mode = 0100644;
	FUNC7(&ancestor_entry.id,
		"452e4244b5d083ddf0460acf1ecc74db9dcfa11a");

	our_entry.path = "modified_file";
	our_entry.mode = 0100644;
	FUNC7(&our_entry.id,
		"452e4244b5d083ddf0460acf1ecc74db9dcfa11a");

	their_entry.path = "modified_file";
	their_entry.mode = 0100644;
	FUNC7(&their_entry.id,
		"452e4244b5d083ddf0460acf1ecc74db9dcfa11a");

	FUNC1(FUNC9(&status, repo, "modified_file"));
	FUNC0(GIT_STATUS_WT_MODIFIED, status);

	FUNC1(FUNC8(&index, repo));
	FUNC1(FUNC5(index, "modified_file", 0));
	FUNC1(FUNC3(
		index, &ancestor_entry, &our_entry, &their_entry));
	FUNC1(FUNC6(index));
	FUNC4(index);

	FUNC1(FUNC9(&status, repo, "modified_file"));

	FUNC0(GIT_STATUS_CONFLICTED, status);
}