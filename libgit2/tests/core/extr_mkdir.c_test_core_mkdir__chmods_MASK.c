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
 int GIT_MKDIR_CHMOD ; 
 int GIT_MKDIR_CHMOD_PATH ; 
 int GIT_MKDIR_PATH ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cleanup_chmod_root ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(void)
{
	struct stat st;
	mode_t *old = FUNC3(sizeof(mode_t));
	*old = FUNC7(022);

	FUNC2(cleanup_chmod_root, old);

	FUNC1(FUNC4("r", 0777, 0));

	FUNC1(FUNC5("mode/is/important", "r", 0777, GIT_MKDIR_PATH, NULL));

	FUNC1(FUNC6("r/mode", &st));
	FUNC0(0755, st.st_mode);
	FUNC1(FUNC6("r/mode/is", &st));
	FUNC0(0755, st.st_mode);
	FUNC1(FUNC6("r/mode/is/important", &st));
	FUNC0(0755, st.st_mode);

	FUNC1(FUNC5("mode2/is2/important2", "r", 0777, GIT_MKDIR_PATH | GIT_MKDIR_CHMOD, NULL));

	FUNC1(FUNC6("r/mode2", &st));
	FUNC0(0755, st.st_mode);
	FUNC1(FUNC6("r/mode2/is2", &st));
	FUNC0(0755, st.st_mode);
	FUNC1(FUNC6("r/mode2/is2/important2", &st));
	FUNC0(0777, st.st_mode);

	FUNC1(FUNC5("mode3/is3/important3", "r", 0777, GIT_MKDIR_PATH | GIT_MKDIR_CHMOD_PATH, NULL));

	FUNC1(FUNC6("r/mode3", &st));
	FUNC0(0777, st.st_mode);
	FUNC1(FUNC6("r/mode3/is3", &st));
	FUNC0(0777, st.st_mode);
	FUNC1(FUNC6("r/mode3/is3/important3", &st));
	FUNC0(0777, st.st_mode);

	/* test that we chmod existing dir */

	FUNC1(FUNC5("mode/is/important", "r", 0777, GIT_MKDIR_PATH | GIT_MKDIR_CHMOD, NULL));

	FUNC1(FUNC6("r/mode", &st));
	FUNC0(0755, st.st_mode);
	FUNC1(FUNC6("r/mode/is", &st));
	FUNC0(0755, st.st_mode);
	FUNC1(FUNC6("r/mode/is/important", &st));
	FUNC0(0777, st.st_mode);

	/* test that we chmod even existing dirs if CHMOD_PATH is set */

	FUNC1(FUNC5("mode2/is2/important2.1", "r", 0777, GIT_MKDIR_PATH | GIT_MKDIR_CHMOD_PATH, NULL));

	FUNC1(FUNC6("r/mode2", &st));
	FUNC0(0777, st.st_mode);
	FUNC1(FUNC6("r/mode2/is2", &st));
	FUNC0(0777, st.st_mode);
	FUNC1(FUNC6("r/mode2/is2/important2.1", &st));
	FUNC0(0777, st.st_mode);
}