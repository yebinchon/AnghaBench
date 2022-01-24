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
struct TYPE_3__ {int /*<<< orphan*/  num_lines; int /*<<< orphan*/  new_lineno; int /*<<< orphan*/  old_lineno; } ;
typedef  TYPE_1__ git_diff_line ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const**,int /*<<< orphan*/ *,size_t,size_t) ; 

__attribute__((used)) static void FUNC3(int old_lineno, int new_lineno, int num_lines, git_patch *patch, size_t hunk_idx, size_t line_idx, const char *file, int lineno)
{
	const git_diff_line *line;

	FUNC1(FUNC2(&line, patch, hunk_idx, line_idx), 0, file, lineno);
	FUNC0(old_lineno, line->old_lineno, file, lineno);
	FUNC0(new_lineno, line->new_lineno, file, lineno);
	FUNC0(num_lines, line->num_lines, file, lineno);
}