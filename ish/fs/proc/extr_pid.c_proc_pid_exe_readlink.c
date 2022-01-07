
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task {TYPE_1__* mm; } ;
struct proc_entry {int dummy; } ;
struct TYPE_2__ {int exefile; } ;


 int _ESRCH ;
 int generic_getpath (int ,char*) ;
 struct task* proc_get_task (struct proc_entry*) ;
 int proc_put_task (struct task*) ;

__attribute__((used)) static int proc_pid_exe_readlink(struct proc_entry *entry, char *buf) {
    struct task *task = proc_get_task(entry);
    if (task == ((void*)0))
        return _ESRCH;
    int err = generic_getpath(task->mm->exefile, buf);
    proc_put_task(task);
    return err;
}
