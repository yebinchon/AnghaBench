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
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) __attribute__((noreturn)) static void
FUNC3(int sig)
{
    (void) sig;

    FUNC1("Intentional segfault / bus error caught\n");
    FUNC1("OK\n");
#ifdef SIG_DFL
# ifdef SIGSEGV
    signal(SIGSEGV, SIG_DFL);
# endif
# ifdef SIGBUS
    signal(SIGBUS, SIG_DFL);
# endif
# ifdef SIGABRT
    signal(SIGABRT, SIG_DFL);
# endif
#endif
    FUNC0(0);
}