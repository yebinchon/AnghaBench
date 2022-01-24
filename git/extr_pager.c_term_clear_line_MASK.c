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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 () ; 

void FUNC4(void)
{
	if (FUNC2())
		/*
		 * Fall back to print a terminal width worth of space
		 * characters (hoping that the terminal is still as wide
		 * as it was upon the first call to term_columns()).
		 */
		FUNC0(stderr, "\r%*s\r", FUNC3(), "");
	else
		/*
		 * On non-dumb terminals use an escape sequence to clear
		 * the whole line, no matter how wide the terminal.
		 */
		FUNC1("\r\033[K", stderr);
}