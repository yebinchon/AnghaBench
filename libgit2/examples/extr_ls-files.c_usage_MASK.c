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

__attribute__((used)) static void FUNC2(const char *message, const char *arg)
{
	if (message && arg)
		FUNC1(stderr, "%s: %s\n", message, arg);
	else if (message)
		FUNC1(stderr, "%s\n", message);
	FUNC1(stderr, "usage: ls-files [--error-unmatch] [--] [<file>...]\n");
	FUNC0(1);
}