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
	FUNC0("One-liner with no trailing newline", "One-liner with no trailing newline");
	FUNC0("One-liner with trailing newline", "One-liner with trailing newline\n");
	FUNC0("Trimmed leading&trailing newlines", "\n\nTrimmed leading&trailing newlines\n\n");
	FUNC0("First paragraph only", "\nFirst paragraph only\n\n(There are more!)");
	FUNC0("First paragraph with  unwrapped trailing\tlines", "\nFirst paragraph\nwith  unwrapped\ntrailing\tlines\n\n(Yes, unwrapped!)");
	FUNC0("\tLeading tabs", "\tLeading\n\ttabs\n\nare preserved"); /* tabs around newlines are collapsed down to a single space */
	FUNC0(" Leading Spaces", " Leading\n Spaces\n\nare preserved"); /* spaces around newlines are collapsed down to a single space */
	FUNC0("Trailing tabs\tare removed", "Trailing tabs\tare removed\t\t");
	FUNC0("Trailing spaces  are removed", "Trailing spaces  are removed  ");
	FUNC0("Trailing tabs", "Trailing tabs\t\n\nare removed");
	FUNC0("Trailing spaces", "Trailing spaces \n\nare removed");
	FUNC0("Newlines are replaced by spaces", "Newlines\nare\nreplaced by spaces\n");
	FUNC0("  Spaces after newlines are collapsed", "\n  Spaces after newlines\n  are\n  collapsed\n  "); /* newlines at the very beginning are ignored and not collapsed */
	FUNC0(" Spaces before newlines are collapsed", "  \nSpaces before newlines  \nare  \ncollapsed  \n");
	FUNC0(" Spaces around newlines are collapsed", "  \n  Spaces around newlines  \n  are  \n  collapsed  \n  ");
	FUNC0(" Trailing newlines are" , "  \n  Trailing newlines  \n  are  \n\n  collapsed  \n  ");
	FUNC0(" Trailing spaces are stripped", "  \n  Trailing spaces \n  are stripped \n\n  \n \t ");
	FUNC0("", "");
	FUNC0("", " ");
	FUNC0("", "\n");
	FUNC0("", "\n \n");
}