#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  cleanup__remove_file ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 

void FUNC6(void)
{
	static const char file_name[] = "new_empty_file";
	static const char file_contents[] = "";
	static const char file_hash[] = "e69de29bb2d1d6434b8b29ae775ad8c2e48c5391";

	git_oid expected_id, actual_id;

	/* initialization */
	FUNC5(&expected_id, file_hash);
	FUNC1(file_name, file_contents);
	FUNC3(&cleanup__remove_file, (void *)file_name);

	FUNC2(FUNC4(&actual_id, file_name, GIT_OBJECT_BLOB));
	FUNC0(&expected_id, &actual_id);
}