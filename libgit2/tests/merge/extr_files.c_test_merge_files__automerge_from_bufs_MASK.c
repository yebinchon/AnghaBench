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
struct TYPE_9__ {int /*<<< orphan*/  len; int /*<<< orphan*/  ptr; int /*<<< orphan*/  mode; int /*<<< orphan*/  path; int /*<<< orphan*/  automergeable; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_merge_file_result ;
struct TYPE_10__ {char* ptr; int size; char* path; int mode; } ;
typedef  TYPE_2__ git_merge_file_input ;

/* Variables and functions */
 TYPE_2__ GIT_MERGE_FILE_INPUT_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (char const*) ; 

void FUNC7(void)
{
	git_merge_file_input ancestor = GIT_MERGE_FILE_INPUT_INIT,
		ours = GIT_MERGE_FILE_INPUT_INIT,
		theirs = GIT_MERGE_FILE_INPUT_INIT;
	git_merge_file_result result = {0};
	const char *expected = "Zero\n1\n2\n3\n4\n5\n6\n7\n8\n9\nTen\n";

	ancestor.ptr = "0\n1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n";
	ancestor.size = FUNC6(ancestor.ptr);
	ancestor.path = "testfile.txt";
	ancestor.mode = 0100755;

	ours.ptr = "Zero\n1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n";
	ours.size = FUNC6(ours.ptr);
	ours.path = "testfile.txt";
	ours.mode = 0100755;

	theirs.ptr = "0\n1\n2\n3\n4\n5\n6\n7\n8\n9\nTen\n";
	theirs.size = FUNC6(theirs.ptr);
	theirs.path = "testfile.txt";
	theirs.mode = 0100755;

	FUNC3(FUNC4(&result, &ancestor, &ours, &theirs, 0));

	FUNC0(1, result.automergeable);

	FUNC1("testfile.txt", result.path);
	FUNC0(0100755, result.mode);

	FUNC0(FUNC6(expected), result.len);
	FUNC2(expected, result.ptr, result.len);

	FUNC5(&result);
}