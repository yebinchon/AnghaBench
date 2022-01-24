#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {long r8; int /*<<< orphan*/  r15; scalar_t__ r10; } ;
struct sigscratch {TYPE_3__ pt; } ;
struct TYPE_4__ {int sa_flags; } ;
struct TYPE_5__ {TYPE_1__ sa; } ;
struct ksignal {scalar_t__ sig; TYPE_2__ ka; } ;

/* Variables and functions */
 void* EINTR ; 
#define  ERESTARTNOHAND 131 
#define  ERESTARTNOINTR 130 
#define  ERESTARTSYS 129 
#define  ERESTART_RESTARTBLOCK 128 
 int SA_RESTART ; 
 int /*<<< orphan*/  __NR_restart_syscall ; 
 int /*<<< orphan*/  FUNC0 (struct ksignal*) ; 
 scalar_t__ FUNC1 (struct ksignal*,struct sigscratch*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (long) ; 

void
FUNC5 (struct sigscratch *scr, long in_syscall)
{
	long restart = in_syscall;
	long errno = scr->pt.r8;
	struct ksignal ksig;

	/*
	 * This only loops in the rare cases of handle_signal() failing, in which case we
	 * need to push through a forced SIGSEGV.
	 */
	while (1) {
		FUNC0(&ksig);

		/*
		 * get_signal() may have run a debugger (via notify_parent())
		 * and the debugger may have modified the state (e.g., to arrange for an
		 * inferior call), thus it's important to check for restarting _after_
		 * get_signal().
		 */
		if ((long) scr->pt.r10 != -1)
			/*
			 * A system calls has to be restarted only if one of the error codes
			 * ERESTARTNOHAND, ERESTARTSYS, or ERESTARTNOINTR is returned.  If r10
			 * isn't -1 then r8 doesn't hold an error code and we don't need to
			 * restart the syscall, so we can clear the "restart" flag here.
			 */
			restart = 0;

		if (ksig.sig <= 0)
			break;

		if (FUNC4(restart)) {
			switch (errno) {
			case ERESTART_RESTARTBLOCK:
			case ERESTARTNOHAND:
				scr->pt.r8 = EINTR;
				/* note: scr->pt.r10 is already -1 */
				break;
			case ERESTARTSYS:
				if ((ksig.ka.sa.sa_flags & SA_RESTART) == 0) {
					scr->pt.r8 = EINTR;
					/* note: scr->pt.r10 is already -1 */
					break;
				}
				/*FALLTHRU*/
			case ERESTARTNOINTR:
				FUNC2(&scr->pt);
				restart = 0; /* don't restart twice if handle_signal() fails... */
			}
		}

		/*
		 * Whee!  Actually deliver the signal.  If the delivery failed, we need to
		 * continue to iterate in this loop so we can deliver the SIGSEGV...
		 */
		if (FUNC1(&ksig, scr))
			return;
	}

	/* Did we come from a system call? */
	if (restart) {
		/* Restart the system call - no handlers present */
		if (errno == ERESTARTNOHAND || errno == ERESTARTSYS || errno == ERESTARTNOINTR
		    || errno == ERESTART_RESTARTBLOCK)
		{
			/*
			 * Note: the syscall number is in r15 which is saved in
			 * pt_regs so all we need to do here is adjust ip so that
			 * the "break" instruction gets re-executed.
			 */
			FUNC2(&scr->pt);
			if (errno == ERESTART_RESTARTBLOCK)
				scr->pt.r15 = __NR_restart_syscall;
		}
	}

	/* if there's no signal to deliver, we just put the saved sigmask
	 * back */
	FUNC3();
}