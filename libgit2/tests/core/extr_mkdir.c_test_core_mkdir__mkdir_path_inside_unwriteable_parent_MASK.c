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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_MKDIR_PATH ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cleanup_chmod_root ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

void FUNC12(void)
{
	struct stat st;
	mode_t *old;

	/* FAT filesystems don't support exec bit, nor group/world bits */
	if (!FUNC3())
		return;

	FUNC1((old = FUNC6(sizeof(mode_t))) != NULL);
	*old = FUNC11(022);
	FUNC5(cleanup_chmod_root, old);

	FUNC2(FUNC7("r", 0777, 0));
	FUNC2(FUNC8("mode/is/important", "r", 0777, GIT_MKDIR_PATH, NULL));
	FUNC2(FUNC9("r/mode", &st));
	FUNC0(0755, st.st_mode);

	FUNC4(FUNC10("r/mode", 0111));
	FUNC2(FUNC9("r/mode", &st));
	FUNC0(0111, st.st_mode);

	FUNC2(
		FUNC8("mode/is/okay/inside", "r", 0777, GIT_MKDIR_PATH, NULL));
	FUNC2(FUNC9("r/mode/is/okay/inside", &st));
	FUNC0(0755, st.st_mode);

	FUNC4(FUNC10("r/mode", 0777));
}