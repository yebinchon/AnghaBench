#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct tgroup {int /*<<< orphan*/  lock; int /*<<< orphan*/  threads; struct task* leader; } ;
struct TYPE_13__ {scalar_t__ esp; } ;
struct task {int exit_signal; struct mm* mm; TYPE_8__* files; TYPE_5__* fs; TYPE_2__* sighand; scalar_t__ clear_tid; int /*<<< orphan*/  pid; int /*<<< orphan*/  group_links; struct tgroup* group; int /*<<< orphan*/  tgid; TYPE_1__ cpu; int /*<<< orphan*/ * vfork; } ;
struct mm {int dummy; } ;
typedef  int dword_t ;
typedef  scalar_t__ addr_t ;
struct TYPE_16__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_15__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_14__ {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
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
 scalar_t__ FUNC0 (TYPE_8__*) ; 
 int FUNC1 (TYPE_8__*) ; 
 int _EFAULT ; 
 int _ENOMEM ; 
 TYPE_8__* FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 TYPE_5__* FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mm*) ; 
 int /*<<< orphan*/  FUNC9 (struct mm*) ; 
 int /*<<< orphan*/  FUNC10 (struct mm*) ; 
 int /*<<< orphan*/  pids_lock ; 
 TYPE_2__* FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (struct task*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct task*,scalar_t__) ; 
 struct tgroup* FUNC15 (struct tgroup*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct task*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct task *task, dword_t flags, addr_t stack, addr_t ptid_addr, addr_t tls_addr, addr_t ctid_addr) {
    task->vfork = NULL;
    if (stack != 0)
        task->cpu.esp = stack;

    int err;
    struct mm *mm = task->mm;
    if (flags & CLONE_VM_) {
        FUNC10(mm);
    } else {
        FUNC13(task, FUNC8(mm));
    }

    if (flags & CLONE_FILES_) {
        task->files->refcount++;
    } else {
        task->files = FUNC2(task->files);
        if (FUNC0(task->files)) {
            err = FUNC1(task->files);
            goto fail_free_mem;
        }
    }

    err = _ENOMEM;
    if (flags & CLONE_FS_) {
        task->fs->refcount++;
    } else {
        task->fs = FUNC4(task->fs);
        if (task->fs == NULL)
            goto fail_free_files;
    }

    if (flags & CLONE_SIGHAND_) {
        task->sighand->refcount++;
    } else {
        task->sighand = FUNC11(task->sighand);
        if (task->sighand == NULL)
            goto fail_free_fs;
    }

    struct tgroup *old_group = task->group;
    FUNC7(&pids_lock);
    FUNC7(&old_group->lock);
    if (!(flags & CLONE_THREAD_)) {
        task->group = FUNC15(old_group);
        task->group->leader = task;
        task->tgid = task->pid;
    }
    FUNC6(&task->group->threads, &task->group_links);
    FUNC16(&old_group->lock);
    FUNC16(&pids_lock);

    if (flags & CLONE_SETTLS_) {
        err = FUNC14(task, tls_addr);
        if (err < 0)
            goto fail_free_sighand;
    }

    err = _EFAULT;
    if (flags & CLONE_CHILD_SETTID_)
        if (FUNC18(task, ctid_addr, task->pid))
            goto fail_free_sighand;
    if (flags & CLONE_PARENT_SETTID_)
        if (FUNC17(ptid_addr, task->pid))
            goto fail_free_sighand;
    if (flags & CLONE_CHILD_CLEARTID_)
        task->clear_tid = ctid_addr;
    task->exit_signal = flags & CSIGNAL_;

    // remember to do CLONE_SYSVSEM
    return 0;

fail_free_sighand:
    FUNC12(task->sighand);
fail_free_fs:
    FUNC5(task->fs);
fail_free_files:
    FUNC3(task->files);
fail_free_mem:
    FUNC9(task->mm);
    return err;
}