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
struct timespec {int dummy; } ;
struct futex {int /*<<< orphan*/  cond; } ;
typedef  scalar_t__ dword_t ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int _EAGAIN ; 
 int _EFAULT ; 
 TYPE_1__* current ; 
 struct futex* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct futex*,scalar_t__*) ; 
 int /*<<< orphan*/  futex_lock ; 
 int /*<<< orphan*/  FUNC3 (struct futex*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 

int FUNC5(addr_t uaddr, dword_t val, struct timespec *timeout) {
    struct futex *futex = FUNC1(uaddr);
    int err = 0;
    dword_t tmp;
    if (FUNC2(futex, &tmp))
        err = _EFAULT;
    else if (tmp != val)
        err = _EAGAIN;
    else
        err = FUNC4(&futex->cond, &futex_lock, timeout);
    FUNC3(futex);
    FUNC0("%d end futex(FUTEX_WAIT)", current->pid);
    return err;
}