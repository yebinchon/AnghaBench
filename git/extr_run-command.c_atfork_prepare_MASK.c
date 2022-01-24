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
struct atfork_state {int /*<<< orphan*/  cs; int /*<<< orphan*/  old; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PTHREAD_CANCEL_DISABLE ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct atfork_state *as)
{
	sigset_t all;

	if (FUNC4(&all))
		FUNC1("sigfillset");
#ifdef NO_PTHREADS
	if (sigprocmask(SIG_SETMASK, &all, &as->old))
		die_errno("sigprocmask");
#else
	FUNC0(FUNC3(SIG_SETMASK, &all, &as->old),
		"blocking all signals");
	FUNC0(FUNC2(PTHREAD_CANCEL_DISABLE, &as->cs),
		"disabling cancellation");
#endif
}