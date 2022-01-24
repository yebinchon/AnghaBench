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
 int EPIPE ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(int err)
{
	if (err == EPIPE) {
		if (FUNC2())
			FUNC0(141);

		FUNC4(SIGPIPE, SIG_DFL);
		FUNC3(SIGPIPE);
		/* Should never happen, but just in case... */
		FUNC1(141);
	}
}