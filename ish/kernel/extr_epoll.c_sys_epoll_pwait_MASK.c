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
typedef  int /*<<< orphan*/  sigset_t_ ;
typedef  int /*<<< orphan*/  int_t ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int dword_t ;
typedef  scalar_t__ addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  _EFAULT ; 
 int /*<<< orphan*/  _EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

int_t FUNC3(fd_t epoll_f, addr_t events_addr, int_t max_events, int_t timeout, addr_t sigmask_addr, dword_t sigsetsize) {
    sigset_t_ mask;
    if (sigmask_addr != 0) {
        if (sigsetsize != sizeof(sigset_t_))
            return _EINVAL;
        if (FUNC2(sigmask_addr, mask))
            return _EFAULT;
        FUNC0(mask);
    }

    return FUNC1(epoll_f, events_addr, max_events, timeout);
}