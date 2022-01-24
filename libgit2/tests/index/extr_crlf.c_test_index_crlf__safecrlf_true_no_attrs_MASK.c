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
 int /*<<< orphan*/  ALL_CRLF_TEXT_RAW ; 
 int /*<<< orphan*/  ALL_LF_TEXT_RAW ; 
 int /*<<< orphan*/  MORE_CRLF_TEXT_RAW ; 
 int /*<<< orphan*/  MORE_LF_TEXT_RAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  g_index ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void FUNC5(void)
{
	FUNC3(g_repo, "core.autocrlf", true);
	FUNC3(g_repo, "core.safecrlf", true);

	FUNC1("crlf/newfile.txt", ALL_LF_TEXT_RAW);
	FUNC0(FUNC4(g_index, "newfile.txt"));

	FUNC1("crlf/newfile.txt", ALL_CRLF_TEXT_RAW);
	FUNC2(FUNC4(g_index, "newfile.txt"));

	FUNC1("crlf/newfile.txt", MORE_CRLF_TEXT_RAW);
	FUNC0(FUNC4(g_index, "newfile.txt"));

	FUNC1("crlf/newfile.txt", MORE_LF_TEXT_RAW);
	FUNC0(FUNC4(g_index, "newfile.txt"));
}