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
struct sigaction {int sa_flags; int /*<<< orphan*/  sa_handler; int /*<<< orphan*/ * sa_restorer; int /*<<< orphan*/  sa_mask; } ;

/* Variables and functions */
 int SA_NODEFER ; 
 int SA_RESETHAND ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  last_ditch_exit ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(int sig)
{
	struct sigaction action;

	/* All signals are enabled in this handler ... */
	FUNC3(&action.sa_mask);

	/*
	 * ... including the signal being handled, plus we want the
	 * handler reset to the default behavior, so that if an exit
	 * handler is hanging for some reason, the UML will just die
	 * after this signal is sent a second time.
	 */
	action.sa_flags = SA_RESETHAND | SA_NODEFER;
	action.sa_restorer = NULL;
	action.sa_handler = last_ditch_exit;
	if (FUNC2(sig, &action, NULL) < 0) {
		FUNC1("failed to install handler for signal %d "
			"- errno = %d\n", sig, errno);
		FUNC0(1);
	}
}