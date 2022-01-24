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
struct sigaction {int sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_sigaction; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SA_NODEFER ; 
 int SA_RESETHAND ; 
 int SA_SIGINFO ; 
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  handle_signal ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void) {
    struct sigaction action;

    action.sa_sigaction = handle_signal;
    action.sa_flags = SA_NODEFER | SA_RESETHAND | SA_SIGINFO;
    FUNC2(&action.sa_mask);

    /* Catch all signals with default action "Core", see signal(7) */
    if (FUNC1(SIGQUIT, &action, NULL) == -1 ||
        FUNC1(SIGILL, &action, NULL) == -1 ||
        FUNC1(SIGABRT, &action, NULL) == -1 ||
        FUNC1(SIGFPE, &action, NULL) == -1 ||
        FUNC1(SIGSEGV, &action, NULL) == -1)
        FUNC0("Could not setup signal handler.\n");
}