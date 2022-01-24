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

/* Variables and functions */
 int GIT_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

void FUNC12(void)
{
	char link_data[GIT_PATH_MAX];
	int link_size = GIT_PATH_MAX;

	FUNC4(FUNC8("symlink", 0777));

	if (!FUNC7("symlink/test"))
		FUNC5();

#ifdef GIT_WIN32
	/*
	 * Windows explicitly requires the global configuration to have
	 * core.symlinks=true in addition to actual filesystem support.
	 */
	create_tmp_global_config("tmp_global_path", "core.symlinks", "true");
#endif

	FUNC10();

	link_size = FUNC9("./symlink/link_to_new.txt", link_data, link_size);
	FUNC1(link_size >= 0);

	link_data[link_size] = '\0';
	FUNC2(link_size, FUNC11("new.txt"));
	FUNC3(link_data, "new.txt");
	FUNC0("./symlink/link_to_new.txt", "my new file\n");
}