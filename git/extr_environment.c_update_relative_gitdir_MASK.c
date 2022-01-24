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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  trace_setup_key ; 

__attribute__((used)) static void FUNC5(const char *name,
				   const char *old_cwd,
				   const char *new_cwd,
				   void *data)
{
	char *path = FUNC2(old_cwd, new_cwd, FUNC1());
	FUNC4(&trace_setup_key,
			 "setup: move $GIT_DIR to '%s'",
			 path);
	FUNC3(path);
	FUNC0(path);
}