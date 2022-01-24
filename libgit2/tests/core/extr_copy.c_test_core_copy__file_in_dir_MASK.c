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
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_MKDIR_PATH ; 
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct stat*) ; 
 size_t FUNC10 (char const*) ; 

void FUNC11(void)
{
	struct stat st;
	const char *content = "This is some other stuff to copy\n";

	FUNC3(FUNC5("an_dir/in_a_dir", 0775, GIT_MKDIR_PATH));
	FUNC2("an_dir/in_a_dir/copy_me", content);
	FUNC1(FUNC8("an_dir"));

	FUNC3(FUNC6
		("an_dir/second_dir/and_more/copy_me_two", 0775));

	FUNC3(FUNC4
		("an_dir/in_a_dir/copy_me",
		 "an_dir/second_dir/and_more/copy_me_two",
		 0664));

	FUNC3(FUNC9("an_dir/second_dir/and_more/copy_me_two", &st));
	FUNC1(FUNC0(st.st_mode));
	FUNC1(FUNC10(content) == (size_t)st.st_size);

	FUNC3(FUNC7("an_dir", NULL, GIT_RMDIR_REMOVE_FILES));
	FUNC1(!FUNC8("an_dir"));
}