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
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

void FUNC6(void)
{
	const char *value;

	g_repo = FUNC3("empty_standard_repo");

	FUNC1(FUNC5("empty_standard_repo/dir", 0777));
	FUNC2("empty_standard_repo/.gitattributes", "[attr]customattr key=value\n");
	FUNC2("empty_standard_repo/dir/.gitattributes", "file customattr\n");

	FUNC1(FUNC4(&value, g_repo, 0, "dir/file", "key"));
	FUNC0(value, "value");
}