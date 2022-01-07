
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfork_info {int done; int cond; int lock; } ;
struct TYPE_2__ {scalar_t__ eax; } ;
struct task {int pid; struct vfork_info* vfork; TYPE_1__ cpu; } ;
typedef int pid_t ;
typedef int dword_t ;
typedef int addr_t ;


 int CLONE_SIGHAND_ ;
 int CLONE_THREAD_ ;
 int CLONE_VFORK_ ;
 int CLONE_VM_ ;
 int CSIGNAL_ ;
 int FIXME (char*,int) ;
 int IMPLEMENTED_FLAGS ;
 int STRACE (char*,int,int ,int ,int ,int ) ;
 int _EINVAL ;
 int _ENOMEM ;
 int cond_destroy (int *) ;
 int cond_init (int *) ;
 int copy_task (struct task*,int,int ,int ,int ,int ) ;
 int current ;
 int lock (int *) ;
 int lock_init (int *) ;
 struct task* task_create_ (int ) ;
 int task_destroy (struct task*) ;
 int task_start (struct task*) ;
 int unlock (int *) ;
 int wait_for_ignore_signals (int *,int *,int *) ;

dword_t sys_clone(dword_t flags, addr_t stack, addr_t ptid, addr_t tls, addr_t ctid) {
    STRACE("clone(0x%x, 0x%x, 0x%x, 0x%x, 0x%x)", flags, stack, ptid, tls, ctid);
    if (flags & ~CSIGNAL_ & ~IMPLEMENTED_FLAGS) {
        FIXME("unimplemented clone flags 0x%x", flags & ~CSIGNAL_ & ~IMPLEMENTED_FLAGS);
        return _EINVAL;
    }
    if (flags & CLONE_SIGHAND_ && !(flags & CLONE_VM_))
        return _EINVAL;
    if (flags & CLONE_THREAD_ && !(flags & CLONE_SIGHAND_))
        return _EINVAL;

    struct task *task = task_create_(current);
    if (task == ((void*)0))
        return _ENOMEM;
    int err = copy_task(task, flags, stack, ptid, tls, ctid);
    if (err < 0) {
        task_destroy(task);
        return err;
    }
    task->cpu.eax = 0;

    struct vfork_info vfork;
    if (flags & CLONE_VFORK_) {
        lock_init(&vfork.lock);
        cond_init(&vfork.cond);
        vfork.done = 0;
        task->vfork = &vfork;
    }


    pid_t pid = task->pid;
    task_start(task);

    if (flags & CLONE_VFORK_) {
        lock(&vfork.lock);
        while (!vfork.done)

            wait_for_ignore_signals(&vfork.cond, &vfork.lock, ((void*)0));
        unlock(&vfork.lock);
        task->vfork = ((void*)0);
        cond_destroy(&vfork.cond);
    }
    return pid;
}
