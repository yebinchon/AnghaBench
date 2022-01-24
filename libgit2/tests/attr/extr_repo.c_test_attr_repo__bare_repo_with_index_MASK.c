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
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC8 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char const**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

void FUNC15(void)
{
	const char *names[4] = { "test1", "test2", "test3", "test4" };
	const char *values[4];
	git_index *index;

	FUNC6(FUNC12(&index, g_repo));

	FUNC5(
		"attr/.gitattributes",
		"*.txt test1 test2=foobar -test3\n"
		"trial.txt -test1 test2=barfoo !test3 test4\n");
	FUNC6(FUNC9(index, ".gitattributes"));
	FUNC10(index);

	FUNC7(FUNC14("attr/.gitattributes"));
	FUNC3(!FUNC11("attr/.gitattributes"));

	FUNC6(FUNC13(g_repo));

	FUNC6(FUNC8(values, g_repo, 0, "file.txt", 4, names));

	FUNC3(FUNC1(values[0]));
	FUNC4("foobar", values[1]);
	FUNC3(FUNC0(values[2]));
	FUNC3(FUNC2(values[3]));

	FUNC6(FUNC8(values, g_repo, 0, "trial.txt", 4, names));

	FUNC3(FUNC0(values[0]));
	FUNC4("barfoo", values[1]);
	FUNC3(FUNC2(values[2]));
	FUNC3(FUNC1(values[3]));

	FUNC6(FUNC8(values, g_repo, 0, "sub/sub/subdir.txt", 4, names));

	FUNC3(FUNC1(values[0]));
	FUNC4("foobar", values[1]);
	FUNC3(FUNC0(values[2]));
	FUNC3(FUNC2(values[3]));
}