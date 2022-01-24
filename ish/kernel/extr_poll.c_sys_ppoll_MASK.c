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
struct timespec_ {int sec; int nsec; } ;
typedef  struct timespec_ sigset_t_ ;
typedef  int dword_t ;
typedef  scalar_t__ addr_t ;

/* Variables and functions */
 int _EFAULT ; 
 int _EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct timespec_) ; 
 int FUNC1 (scalar_t__,int,int) ; 
 scalar_t__ FUNC2 (scalar_t__,struct timespec_) ; 

dword_t FUNC3(addr_t fds, dword_t nfds, addr_t timeout_addr, addr_t sigmask_addr, dword_t sigsetsize) {
    int timeout = -1;
    if (timeout_addr != 0) {
        struct timespec_ timeout_timespec;
        if (FUNC2(timeout_addr, timeout_timespec))
            return _EFAULT;
        timeout = timeout_timespec.sec * 1000 + timeout_timespec.nsec / 1000000;
    }

    sigset_t_ mask;
    if (sigmask_addr != 0) {
        if (sigsetsize != sizeof(sigset_t_))
            return _EINVAL;
        if (FUNC2(sigmask_addr, mask))
            return _EFAULT;
        FUNC0(mask);
    }

    return FUNC1(fds, nfds, timeout);
}