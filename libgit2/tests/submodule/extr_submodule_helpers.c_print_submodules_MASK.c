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
typedef  int /*<<< orphan*/  git_submodule ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC4(git_submodule *sm, const char *name, void *p)
{
	unsigned int loc = 0;
	FUNC0(p);
	FUNC2(&loc, sm);
	FUNC1(stderr, "# submodule %s (at %s) flags %x\n",
		name, FUNC3(sm), loc);
	return 0;
}