
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int dummy; } ;
struct proc_entry {int pid; } ;


 int lock (int *) ;
 struct task* pid_get_task (int ) ;
 int pids_lock ;
 int unlock (int *) ;

__attribute__((used)) static struct task *proc_get_task(struct proc_entry *entry) {
    lock(&pids_lock);
    struct task *task = pid_get_task(entry->pid);
    if (task == ((void*)0))
        unlock(&pids_lock);
    return task;
}
