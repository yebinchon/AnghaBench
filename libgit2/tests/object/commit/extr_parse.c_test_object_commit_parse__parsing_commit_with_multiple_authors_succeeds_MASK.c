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
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC1(void)
{
	const char *commit =
		"tree 3e7ac388cadacccdf1c6c5f3445895b71d9cb0f8\n"
		"author Author1 <author@example.com>\n"
		"author Author2 <author@example.com>\n"
		"author Author3 <author@example.com>\n"
		"author Author4 <author@example.com>\n"
		"committer Committer <committer@example.com>\n"
		"\n"
		"Message";
	FUNC0(commit, 0,
		"3e7ac388cadacccdf1c6c5f3445895b71d9cb0f8",
		"Author1 <author@example.com>",
		"Committer <committer@example.com>",
		NULL,
		"Message", 0);
}