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
 int /*<<< orphan*/  aliases ; 
 int /*<<< orphan*/  groups ; 
 int FUNC0 (int,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(int c, const char **v)
{
	/* Finally, just call tinytest_main().	It lets you specify verbose
	   or quiet output with --verbose and --quiet.	You can list
	   specific tests:

	       tinytest-demo demo/memcpy

	   or use a ..-wildcard to select multiple tests with a common
	   prefix:

	       tinytest-demo demo/..

	   If you list no tests, you get them all by default, so that
	   "tinytest-demo" and "tinytest-demo .." mean the same thing.

	*/
	FUNC1(aliases);
	return FUNC0(c, v, groups);
}