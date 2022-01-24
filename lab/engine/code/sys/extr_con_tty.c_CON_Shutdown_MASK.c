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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TCSADRAIN ; 
 int /*<<< orphan*/  TTY_tc ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ttycon_on ; 

void FUNC3( void )
{
	if (ttycon_on)
	{
		FUNC0();
		FUNC2 (STDIN_FILENO, TCSADRAIN, &TTY_tc);
	}

	// Restore blocking to stdin reads
	FUNC1(STDIN_FILENO, F_SETFL, FUNC1(STDIN_FILENO, F_GETFL, 0) & ~O_NONBLOCK);
}