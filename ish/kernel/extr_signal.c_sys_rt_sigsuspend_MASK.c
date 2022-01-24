#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_t ;
typedef  scalar_t__ sigset_t_ ;
typedef  scalar_t__ int_t ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_4__ {long long pid; TYPE_1__* sighand; int /*<<< orphan*/  pause; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long long) ; 
 scalar_t__ _EFAULT ; 
 scalar_t__ _EINTR ; 
 scalar_t__ _EINVAL ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int_t FUNC6(addr_t mask_addr, uint_t size) {
    if (size != sizeof(sigset_t_))
        return _EINVAL;
    sigset_t_ mask;
    if (FUNC4(mask_addr, mask))
        return _EFAULT;
    FUNC0("sigsuspend(0x%llx) = ...\n", (long long) mask);

    FUNC1(&current->sighand->lock);
    FUNC2(mask);
    while (FUNC5(&current->pause, &current->sighand->lock, NULL) != _EINTR)
        continue;
    FUNC3(&current->sighand->lock);
    FUNC0("%d done sigsuspend", current->pid);
    return _EINTR;
}