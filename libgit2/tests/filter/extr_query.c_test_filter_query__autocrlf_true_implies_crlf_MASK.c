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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  g_repo ; 

void FUNC3(void)
{
	FUNC1(g_repo, "core.autocrlf", true);
	FUNC0(1, FUNC2("not_in_gitattributes", "crlf"));
	FUNC0(1, FUNC2("foo.txt", "crlf"));
	FUNC0(0, FUNC2("foo.bin", "crlf"));
	FUNC0(1, FUNC2("foo.lf", "crlf"));

	FUNC1(g_repo, "core.autocrlf", false);
	FUNC0(0, FUNC2("not_in_gitattributes", "crlf"));
	FUNC0(1, FUNC2("foo.txt", "crlf"));
	FUNC0(0, FUNC2("foo.bin", "crlf"));
	FUNC0(1, FUNC2("foo.lf", "crlf"));
}