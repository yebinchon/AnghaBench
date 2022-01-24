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
struct sigaction_ {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t_ ;
typedef  int dword_t ;
typedef  scalar_t__ addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__,scalar_t__,int) ; 
 int _EFAULT ; 
 int _EINVAL ; 
 int FUNC1 (int,struct sigaction_*,struct sigaction_*) ; 
 scalar_t__ FUNC2 (scalar_t__,struct sigaction_) ; 
 scalar_t__ FUNC3 (scalar_t__,struct sigaction_) ; 

dword_t FUNC4(dword_t signum, addr_t action_addr, addr_t oldaction_addr, dword_t sigset_size) {
    if (sigset_size != sizeof(sigset_t_))
        return _EINVAL;
    struct sigaction_ action, oldaction;
    if (action_addr != 0)
        if (FUNC2(action_addr, action))
            return _EFAULT;
    FUNC0("rt_sigaction(%d, 0x%x, 0x%x, %d)", signum, action_addr, oldaction_addr, sigset_size);

    int err = FUNC1(signum,
            action_addr ? &action : NULL,
            oldaction_addr ? &oldaction : NULL);
    if (err < 0)
        return err;

    if (oldaction_addr != 0)
        if (FUNC3(oldaction_addr, oldaction))
            return _EFAULT;
    return err;
}