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
 int /*<<< orphan*/  FUNC0 (char const*,scalar_t__,char*,char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*) ; 

void FUNC2(void)
{
	const char *commit =
		"tree 3e7ac388cadacccdf1c6c5f3445895b71d9cb0f8\n"
		"author <>\n"
		"committer <>\n"
		"encoding foo\n";
	/*
	 * As we ignore unknown fields, the cut-off encoding field will be
	 * parsed just fine.
	 */
	FUNC0(commit, FUNC1(commit) - FUNC1("ncoding foo\n"),
		"3e7ac388cadacccdf1c6c5f3445895b71d9cb0f8",
		"<>",
		"<>",
		NULL,
		"", 0);
}