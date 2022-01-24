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
struct iovec {unsigned long* iov_base; int iov_len; } ;

/* Variables and functions */
 int FP_SIZE ; 
 int /*<<< orphan*/  NT_X86_XSTATE ; 
 int /*<<< orphan*/  PTRACE_SETREGSET ; 
 int errno ; 
 scalar_t__ have_xstate_support ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iovec*) ; 
 int FUNC1 (int,unsigned long*) ; 

int FUNC2(int pid, unsigned long *fp_regs)
{
#ifdef PTRACE_SETREGSET
	struct iovec iov;
	if (have_xstate_support) {
		iov.iov_base = fp_regs;
		iov.iov_len = FP_SIZE * sizeof(unsigned long);
		if (ptrace(PTRACE_SETREGSET, pid, NT_X86_XSTATE, &iov) < 0)
			return -errno;
		return 0;
	} else
#endif
		return FUNC1(pid, fp_regs);
}