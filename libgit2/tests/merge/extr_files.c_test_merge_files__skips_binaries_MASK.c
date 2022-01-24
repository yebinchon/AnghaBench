#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  automergeable; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_merge_file_result ;
struct TYPE_10__ {char* ptr; int size; char* path; int mode; } ;
typedef  TYPE_2__ git_merge_file_input ;

/* Variables and functions */
 TYPE_2__ GIT_MERGE_FILE_INPUT_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(void)
{
	git_merge_file_input ancestor = GIT_MERGE_FILE_INPUT_INIT,
		ours = GIT_MERGE_FILE_INPUT_INIT,
		theirs = GIT_MERGE_FILE_INPUT_INIT;
	git_merge_file_result result = {0};

	ancestor.ptr = "ance\0stor\0";
	ancestor.size = 10;
	ancestor.path = "ancestor.txt";
	ancestor.mode = 0100755;

	ours.ptr = "foo\0bar\0";
	ours.size = 8;
	ours.path = "ours.txt";
	ours.mode = 0100755;

	theirs.ptr = "bar\0foo\0";
	theirs.size = 8;
	theirs.path = "theirs.txt";
	theirs.mode = 0100644;

	FUNC1(FUNC2(&result, &ancestor, &ours, &theirs, NULL));

	FUNC0(0, result.automergeable);

	FUNC3(&result);
}