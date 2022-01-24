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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	git_oid expected, oid;

#ifndef GIT_ARCH_64
	FUNC2();
#endif

	if (!FUNC1("GITTEST_INVASIVE_FS_SIZE") ||
		!FUNC1("GITTEST_SLOW"))
		FUNC2();

	FUNC3(&expected, "3fb56989cca483b21ba7cb0a6edb229d10e1c26c");
	FUNC4(&oid);

	FUNC0(&expected, &oid);
}