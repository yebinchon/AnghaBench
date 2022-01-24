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
struct line_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,struct line_buffer*) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static void FUNC3(const char *line, struct line_buffer *stdin_buf)
{
	const char *arg = FUNC2(line, ' ');
	if (!arg)
		FUNC0("no argument in line: %s", line);
	FUNC1(line, arg + 1, stdin_buf);
}