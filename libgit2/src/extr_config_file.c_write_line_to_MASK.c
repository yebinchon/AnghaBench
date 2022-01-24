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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static int FUNC2(git_buf *buf, const char *line, size_t line_len)
{
	int result = FUNC1(buf, line, line_len);

	if (!result && line_len && line[line_len-1] != '\n')
		result = FUNC0(buf, "\n");

	return result;
}