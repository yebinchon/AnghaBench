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
struct sigaction {int sa_flags; int /*<<< orphan*/ * sa_restorer; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_sigaction; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int SA_NODEFER ; 
 int SA_ONSTACK ; 
 int SA_RESTART ; 
 int SA_SIGINFO ; 
 int SIGALRM ; 
 int SIGIO ; 
 int SIGSEGV ; 
 int SIGWINCH ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  hard_handler ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC6(int sig)
{
	struct sigaction action;
	int flags = SA_SIGINFO | SA_ONSTACK;
	sigset_t sig_mask;

	action.sa_sigaction = hard_handler;

	/* block irq ones */
	FUNC3(&action.sa_mask);
	FUNC2(&action.sa_mask, SIGIO);
	FUNC2(&action.sa_mask, SIGWINCH);
	FUNC2(&action.sa_mask, SIGALRM);

	if (sig == SIGSEGV)
		flags |= SA_NODEFER;

	if (FUNC4(&action.sa_mask, sig))
		flags |= SA_RESTART; /* if it's an irq signal */

	action.sa_flags = flags;
	action.sa_restorer = NULL;
	if (FUNC1(sig, &action, NULL) < 0)
		FUNC0("sigaction failed - errno = %d\n", errno);

	FUNC3(&sig_mask);
	FUNC2(&sig_mask, sig);
	if (FUNC5(SIG_UNBLOCK, &sig_mask, NULL) < 0)
		FUNC0("sigprocmask failed - errno = %d\n", errno);
}