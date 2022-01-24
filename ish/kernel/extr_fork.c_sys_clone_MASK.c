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
struct vfork_info {int done; int /*<<< orphan*/  cond; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {scalar_t__ eax; } ;
struct task {int pid; struct vfork_info* vfork; TYPE_1__ cpu; } ;
typedef  int pid_t ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int CLONE_SIGHAND_ ; 
 int CLONE_THREAD_ ; 
 int CLONE_VFORK_ ; 
 int CLONE_VM_ ; 
 int CSIGNAL_ ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int IMPLEMENTED_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int _EINVAL ; 
 int _ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct task*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct task* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct task*) ; 
 int /*<<< orphan*/  FUNC9 (struct task*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

dword_t FUNC12(dword_t flags, addr_t stack, addr_t ptid, addr_t tls, addr_t ctid) {
    FUNC1("clone(0x%x, 0x%x, 0x%x, 0x%x, 0x%x)", flags, stack, ptid, tls, ctid);
    if (flags & ~CSIGNAL_ & ~IMPLEMENTED_FLAGS) {
        FUNC0("unimplemented clone flags 0x%x", flags & ~CSIGNAL_ & ~IMPLEMENTED_FLAGS);
        return _EINVAL;
    }
    if (flags & CLONE_SIGHAND_ && !(flags & CLONE_VM_))
        return _EINVAL;
    if (flags & CLONE_THREAD_ && !(flags & CLONE_SIGHAND_))
        return _EINVAL;

    struct task *task = FUNC7(current);
    if (task == NULL)
        return _ENOMEM;
    int err = FUNC4(task, flags, stack, ptid, tls, ctid);
    if (err < 0) {
        FUNC8(task);
        return err;
    }
    task->cpu.eax = 0;

    struct vfork_info vfork;
    if (flags & CLONE_VFORK_) {
        FUNC6(&vfork.lock);
        FUNC3(&vfork.cond);
        vfork.done = false;
        task->vfork = &vfork;
    }

    // task might be destroyed by the time we finish, so save the pid
    pid_t pid = task->pid;
    FUNC9(task);

    if (flags & CLONE_VFORK_) {
        FUNC5(&vfork.lock);
        while (!vfork.done)
            // FIXME this should stop waiting if a fatal signal is received
            FUNC11(&vfork.cond, &vfork.lock, NULL);
        FUNC10(&vfork.lock);
        task->vfork = NULL;
        FUNC2(&vfork.cond);
    }
    return pid;
}