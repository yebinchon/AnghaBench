#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_SYSTEM ; 
 int /*<<< orphan*/  GIT_OPT_GET_SEARCH_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_1__ system_attr_path ; 

void FUNC7(void)
{
	g_repo = FUNC2("crlf");
	FUNC3(FUNC6("crlf/.gitattributes"));

	FUNC1(FUNC5(
		GIT_OPT_GET_SEARCH_PATH, GIT_CONFIG_LEVEL_SYSTEM, &system_attr_path));
	FUNC1(FUNC4(&system_attr_path,
		system_attr_path.ptr, "gitattributes"));

	FUNC0(system_attr_path.ptr,
		"*.txt text\n"
		"*.bin binary\n"
		"*.crlf text eol=crlf\n"
		"*.lf text eol=lf\n");
}