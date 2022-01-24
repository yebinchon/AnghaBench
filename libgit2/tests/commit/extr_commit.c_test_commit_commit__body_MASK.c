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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

void FUNC1(void)
{
	FUNC0(NULL, "One-liner with no trailing newline");
	FUNC0(NULL, "One-liner with trailing newline\n");
	FUNC0(NULL, "\n\nTrimmed leading&trailing newlines\n\n");
	FUNC0("(There are more!)", "\nFirst paragraph only\n\n(There are more!)");
	FUNC0("(Yes, unwrapped!)", "\nFirst paragraph\nwith  unwrapped\ntrailing\tlines\n\n(Yes, unwrapped!)");
	FUNC0("are preserved", "\tLeading\n\ttabs\n\nare preserved"); /* tabs around newlines are collapsed down to a single space */
	FUNC0("are preserved", " Leading\n Spaces\n\nare preserved"); /* spaces around newlines are collapsed down to a single space */
	FUNC0(NULL, "Trailing tabs\tare removed\t\t");
	FUNC0(NULL, "Trailing spaces  are removed  ");
	FUNC0("are removed", "Trailing tabs\t\n\nare removed");
	FUNC0("are removed", "Trailing spaces \n\nare removed");
	FUNC0(NULL,"Newlines\nare\nreplaced by spaces\n");
	FUNC0(NULL , "\n  Spaces after newlines\n  are\n  collapsed\n  "); /* newlines at the very beginning are ignored and not collapsed */
	FUNC0(NULL , "  \nSpaces before newlines  \nare  \ncollapsed  \n");
	FUNC0(NULL , "  \n  Spaces around newlines  \n  are  \n  collapsed  \n  ");
	FUNC0("collapsed" , "  \n  Trailing newlines  \n  are  \n\n  collapsed  \n  ");
	FUNC0(NULL, "  \n  Trailing spaces \n  are stripped \n\n  \n \t ");
	FUNC0(NULL , "");
	FUNC0(NULL , " ");
	FUNC0(NULL , "\n");
	FUNC0(NULL , "\n \n");
}