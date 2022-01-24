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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

void FUNC12(void)
{
	if (!FUNC8(FUNC5()))
		FUNC4();

	FUNC1("file", "Dummy file.");
	FUNC2(FUNC6("dir", 0777, 0));

	FUNC3(FUNC10("file", "file-symlink"));
	FUNC3(FUNC10("dir", "dir-symlink"));

	FUNC3(FUNC11("file-symlink"));
	FUNC3(FUNC11("dir-symlink"));

	FUNC0(FUNC7("file"));
	FUNC0(FUNC7("dir"));

	FUNC3(FUNC11("file"));
	FUNC3(FUNC9("dir"));
}