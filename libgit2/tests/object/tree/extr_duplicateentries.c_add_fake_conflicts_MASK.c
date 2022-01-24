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
struct TYPE_7__ {char* path; int /*<<< orphan*/  id; void* mode; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 void* GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC5(git_index *index)
{
	git_index_entry ancestor_entry, our_entry, their_entry;

	FUNC4(&ancestor_entry, 0x0, sizeof(git_index_entry));
	FUNC4(&our_entry, 0x0, sizeof(git_index_entry));
	FUNC4(&their_entry, 0x0, sizeof(git_index_entry));

	ancestor_entry.path = "duplicate";
	ancestor_entry.mode = GIT_FILEMODE_BLOB;
	FUNC0(&ancestor_entry, 1);
	FUNC3(&ancestor_entry.id, "a8233120f6ad708f843d861ce2b7228ec4e3dec6");

	our_entry.path = "duplicate";
	our_entry.mode = GIT_FILEMODE_BLOB;
	FUNC0(&our_entry, 2);
	FUNC3(&our_entry.id, "45b983be36b73c0788dc9cbcb76cbb80fc7bb057");

	their_entry.path = "duplicate";
	their_entry.mode = GIT_FILEMODE_BLOB;
	FUNC0(&their_entry, 3);
	FUNC3(&their_entry.id, "a71586c1dfe8a71c6cbf6c129f404c5642ff31bd");

	FUNC1(FUNC2(index, &ancestor_entry, &our_entry, &their_entry));
}