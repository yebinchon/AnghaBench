#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sighand {int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ sigset_t_ ;
typedef  int dword_t ;
typedef  scalar_t__ addr_t ;
struct TYPE_2__ {struct sighand* sighand; int /*<<< orphan*/  blocked; } ;

/* Variables and functions */
 int SIG_BLOCK_ ; 
 int SIG_SETMASK_ ; 
 int SIG_UNBLOCK_ ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,long long,scalar_t__,int) ; 
 int _EFAULT ; 
 int _EINVAL ; 
 TYPE_1__* current ; 
 int FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

dword_t FUNC6(dword_t how, addr_t set_addr, addr_t oldset_addr, dword_t size) {
    if (size != sizeof(sigset_t_))
        return _EINVAL;

    sigset_t_ set;
    if (set_addr != 0)
        if (FUNC4(set_addr, set))
            return _EFAULT;
    FUNC0("rt_sigprocmask(%s, %#llx, %#x, %d)",
            how == SIG_BLOCK_ ? "SIG_BLOCK" :
            how == SIG_UNBLOCK_ ? "SIG_UNBLOCK" :
            how == SIG_SETMASK_ ? "SIG_SETMASK" : "??",
            set_addr != 0 ? (long long) set : -1, oldset_addr, size);

    if (oldset_addr != 0)
        if (FUNC5(oldset_addr, current->blocked))
            return _EFAULT;
    if (set_addr != 0) {
        struct sighand *sighand = current->sighand;
        FUNC2(&sighand->lock);
        int err = FUNC1(how, set);
        FUNC3(&sighand->lock);
        if (err < 0)
            return err;
    }
    return 0;
}