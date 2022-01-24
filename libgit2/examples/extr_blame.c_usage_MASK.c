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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(const char *msg, const char *arg)
{
	if (msg && arg)
		FUNC1(stderr, "%s: %s\n", msg, arg);
	else if (msg)
		FUNC1(stderr, "%s\n", msg);
	FUNC1(stderr, "usage: blame [options] [<commit range>] <path>\n");
	FUNC1(stderr, "\n");
	FUNC1(stderr, "   <commit range>      example: `HEAD~10..HEAD`, or `1234abcd`\n");
	FUNC1(stderr, "   -L <n,m>            process only line range n-m, counting from 1\n");
	FUNC1(stderr, "   -M                  find line moves within and across files\n");
	FUNC1(stderr, "   -C                  find line copies within and across files\n");
	FUNC1(stderr, "   -F                  follow only the first parent commits\n");
	FUNC1(stderr, "\n");
	FUNC0(1);
}