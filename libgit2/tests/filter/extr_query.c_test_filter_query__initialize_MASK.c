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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  g_repo ; 

void FUNC2(void)
{
	g_repo = FUNC1("crlf");

	FUNC0("crlf/.gitattributes",
		"*.txt text\n"
		"*.bin binary\n"
		"*.crlf text eol=crlf\n"
		"*.lf text eol=lf\n"
		"*.binident binary ident\n"
		"*.ident text ident\n"
		"*.identcrlf ident text eol=crlf\n"
		"*.identlf ident text eol=lf\n"
		"*.custom custom ident text\n");
}