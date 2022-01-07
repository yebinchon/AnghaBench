
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct tgroup {int lock; int threads; struct task* leader; } ;
struct TYPE_13__ {scalar_t__ esp; } ;
struct task {int exit_signal; struct mm* mm; TYPE_8__* files; TYPE_5__* fs; TYPE_2__* sighand; scalar_t__ clear_tid; int pid; int group_links; struct tgroup* group; int tgid; TYPE_1__ cpu; int * vfork; } ;
struct mm {int dummy; } ;
typedef int dword_t ;
typedef scalar_t__ addr_t ;
struct TYPE_16__ {int refcount; } ;
struct TYPE_15__ {int refcount; } ;
struct TYPE_14__ {int refcount; } ;


 int CLONE_CHILD_CLEARTID_ ;
 int CLONE_CHILD_SETTID_ ;
 int CLONE_FILES_ ;
 int CLONE_FS_ ;
 int CLONE_PARENT_SETTID_ ;
 int CLONE_SETTLS_ ;
 int CLONE_SIGHAND_ ;
 int CLONE_THREAD_ ;
 int CLONE_VM_ ;
 int CSIGNAL_ ;
 scalar_t__ IS_ERR (TYPE_8__*) ;
 int PTR_ERR (TYPE_8__*) ;
 int _EFAULT ;
 int _ENOMEM ;
 TYPE_8__* fdtable_copy (TYPE_8__*) ;
 int fdtable_release (TYPE_8__*) ;
 TYPE_5__* fs_info_copy (TYPE_5__*) ;
 int fs_info_release (TYPE_5__*) ;
 int list_add (int *,int *) ;
 int lock (int *) ;
 int mm_copy (struct mm*) ;
 int mm_release (struct mm*) ;
 int mm_retain (struct mm*) ;
 int pids_lock ;
 TYPE_2__* sighand_copy (TYPE_2__*) ;
 int sighand_release (TYPE_2__*) ;
 int task_set_mm (struct task*,int ) ;
 int task_set_thread_area (struct task*,scalar_t__) ;
 struct tgroup* tgroup_copy (struct tgroup*) ;
 int unlock (int *) ;
 scalar_t__ user_put (scalar_t__,int ) ;
 scalar_t__ user_put_task (struct task*,scalar_t__,int ) ;

__attribute__((used)) static int copy_task(struct task *task, dword_t flags, addr_t stack, addr_t ptid_addr, addr_t tls_addr, addr_t ctid_addr) {
    task->vfork = ((void*)0);
    if (stack != 0)
        task->cpu.esp = stack;

    int err;
    struct mm *mm = task->mm;
    if (flags & CLONE_VM_) {
        mm_retain(mm);
    } else {
        task_set_mm(task, mm_copy(mm));
    }

    if (flags & CLONE_FILES_) {
        task->files->refcount++;
    } else {
        task->files = fdtable_copy(task->files);
        if (IS_ERR(task->files)) {
            err = PTR_ERR(task->files);
            goto fail_free_mem;
        }
    }

    err = _ENOMEM;
    if (flags & CLONE_FS_) {
        task->fs->refcount++;
    } else {
        task->fs = fs_info_copy(task->fs);
        if (task->fs == ((void*)0))
            goto fail_free_files;
    }

    if (flags & CLONE_SIGHAND_) {
        task->sighand->refcount++;
    } else {
        task->sighand = sighand_copy(task->sighand);
        if (task->sighand == ((void*)0))
            goto fail_free_fs;
    }

    struct tgroup *old_group = task->group;
    lock(&pids_lock);
    lock(&old_group->lock);
    if (!(flags & CLONE_THREAD_)) {
        task->group = tgroup_copy(old_group);
        task->group->leader = task;
        task->tgid = task->pid;
    }
    list_add(&task->group->threads, &task->group_links);
    unlock(&old_group->lock);
    unlock(&pids_lock);

    if (flags & CLONE_SETTLS_) {
        err = task_set_thread_area(task, tls_addr);
        if (err < 0)
            goto fail_free_sighand;
    }

    err = _EFAULT;
    if (flags & CLONE_CHILD_SETTID_)
        if (user_put_task(task, ctid_addr, task->pid))
            goto fail_free_sighand;
    if (flags & CLONE_PARENT_SETTID_)
        if (user_put(ptid_addr, task->pid))
            goto fail_free_sighand;
    if (flags & CLONE_CHILD_CLEARTID_)
        task->clear_tid = ctid_addr;
    task->exit_signal = flags & CSIGNAL_;


    return 0;

fail_free_sighand:
    sighand_release(task->sighand);
fail_free_fs:
    fs_info_release(task->fs);
fail_free_files:
    fdtable_release(task->files);
fail_free_mem:
    mm_release(task->mm);
    return err;
}
