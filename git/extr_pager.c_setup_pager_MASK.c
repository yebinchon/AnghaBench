#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int in; int /*<<< orphan*/  env_array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 char* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 TYPE_1__ pager_process ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  wait_for_pager_atexit ; 
 int /*<<< orphan*/  wait_for_pager_signal ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int /*<<< orphan*/ ) ; 

void FUNC12(void)
{
	const char *pager = FUNC4(FUNC5(1));

	if (!pager)
		return;

	/*
	 * After we redirect standard output, we won't be able to use an ioctl
	 * to get the terminal size. Let's grab it now, and then set $COLUMNS
	 * to communicate it to any sub-processes.
	 */
	{
		char buf[64];
		FUNC11(buf, sizeof(buf), "%d", FUNC10());
		FUNC7("COLUMNS", buf, 0);
	}

	FUNC7("GIT_PAGER_IN_USE", "true", 1);

	/* spawn the pager */
	FUNC6(&pager_process, pager);
	pager_process.in = -1;
	FUNC0(&pager_process.env_array, "GIT_PAGER_IN_USE");
	if (FUNC9(&pager_process))
		return;

	/* original process continues, but writes to the pipe */
	FUNC3(pager_process.in, 1);
	if (FUNC5(2))
		FUNC3(pager_process.in, 2);
	FUNC2(pager_process.in);

	/* this makes sure that the parent terminates after the pager */
	FUNC8(wait_for_pager_signal);
	FUNC1(wait_for_pager_atexit);
}