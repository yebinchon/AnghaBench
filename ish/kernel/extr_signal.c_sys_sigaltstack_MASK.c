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
struct stack_t_ {int flags; scalar_t__ size; int /*<<< orphan*/  stack; } ;
struct sighand {scalar_t__ altstack_size; int /*<<< orphan*/  lock; int /*<<< orphan*/  altstack; } ;
typedef  int /*<<< orphan*/  dword_t ;
typedef  scalar_t__ addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  esp; } ;
struct TYPE_4__ {TYPE_1__ cpu; struct sighand* sighand; } ;

/* Variables and functions */
 scalar_t__ MINSIGSTKSZ_ ; 
 int SS_DISABLE_ ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  _EFAULT ; 
 int /*<<< orphan*/  _ENOMEM ; 
 int /*<<< orphan*/  _EPERM ; 
 int /*<<< orphan*/  FUNC1 (struct sighand*,struct stack_t_*) ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct sighand*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,struct stack_t_) ; 
 scalar_t__ FUNC6 (scalar_t__,struct stack_t_) ; 

dword_t FUNC7(addr_t ss_addr, addr_t old_ss_addr) {
    FUNC0("sigaltstack(0x%x, 0x%x)", ss_addr, old_ss_addr);
    struct sighand *sighand = current->sighand;
    FUNC3(&sighand->lock);
    if (old_ss_addr != 0) {
        struct stack_t_ old_ss;
        FUNC1(sighand, &old_ss);
        if (FUNC6(old_ss_addr, old_ss)) {
            FUNC4(&sighand->lock);
            return _EFAULT;
        }
    }
    if (ss_addr != 0) {
        if (FUNC2(current->cpu.esp, sighand)) {
            FUNC4(&sighand->lock);
            return _EPERM;
        }
        struct stack_t_ ss;
        if (FUNC5(ss_addr, ss)) {
            FUNC4(&sighand->lock);
            return _EFAULT;
        }
        if (ss.flags & SS_DISABLE_) {
            sighand->altstack = 0;
        } else {
            if (ss.size < MINSIGSTKSZ_)
                return _ENOMEM;
            sighand->altstack = ss.stack;
            sighand->altstack_size = ss.size;
        }
    }
    FUNC4(&sighand->lock);
    return 0;
}