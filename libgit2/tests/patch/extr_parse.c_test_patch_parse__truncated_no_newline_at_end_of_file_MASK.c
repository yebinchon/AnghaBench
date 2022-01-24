#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_patch ;
struct TYPE_3__ {int /*<<< orphan*/  content; } ;
typedef  TYPE_1__ git_diff_line ;

/* Variables and functions */
 char* PATCH_APPEND_NO_NL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 size_t FUNC5 (char*) ; 

void FUNC6(void)
{
	size_t len = FUNC5(PATCH_APPEND_NO_NL) - FUNC5("at end of file\n");
	const git_diff_line *line;
	git_patch *patch;

	FUNC1(FUNC3(&patch, PATCH_APPEND_NO_NL, len, NULL));
	FUNC1(FUNC4(&line, patch, 0, 4));
	FUNC0(line->content, "\\ No newline ");

	FUNC2(patch);
}