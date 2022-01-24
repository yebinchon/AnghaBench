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
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  ptr; int /*<<< orphan*/  mode; int /*<<< orphan*/  path; int /*<<< orphan*/  automergeable; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_merge_file_result ;
struct TYPE_9__ {char* path; int mode; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOMERGEABLE_MERGED_FILE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  repo ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
	git_merge_file_result result = {0};
	git_index_entry ancestor, ours, theirs;

	FUNC6(&ancestor.id, "6212c31dab5e482247d7977e4f0dd3601decf13b");
	ancestor.path = "automergeable.txt";
	ancestor.mode = 0100644;

	FUNC6(&ours.id, "ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf");
	ours.path = "automergeable.txt";
	ours.mode = 0100755;

	FUNC6(&theirs.id, "058541fc37114bfc1dddf6bd6bffc7fae5c2e6fe");
	theirs.path = "newname.txt";
	theirs.mode = 0100644;

	FUNC3(FUNC4(&result, repo,
		&ancestor, &ours, &theirs, 0));

	FUNC0(1, result.automergeable);

	FUNC1("newname.txt", result.path);
	FUNC0(0100755, result.mode);

	FUNC0(FUNC7(AUTOMERGEABLE_MERGED_FILE), result.len);
	FUNC2(AUTOMERGEABLE_MERGED_FILE, result.ptr, result.len);

	FUNC5(&result);
}