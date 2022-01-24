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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(void)
{
	FUNC3("attr/.git/info/exclude", "/NewFolder\n/NewFolder/NewFolder");
	FUNC6("attr/.gitignore");
	FUNC1(!FUNC4("attr/.gitignore"));
	FUNC5("attr/.gitignore", 0777);
	FUNC2("attr/.gitignore/garbage.txt", "new_file\n");

	FUNC0(false, "File.txt");
	FUNC0(true, "NewFolder");
	FUNC0(true, "NewFolder/NewFolder");
	FUNC0(true, "NewFolder/NewFolder/File.txt");
}