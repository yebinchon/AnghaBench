
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task {TYPE_1__* files; } ;
struct proc_entry {int fd; } ;
struct fd {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int _ESRCH ;
 struct fd* fdtable_get (TYPE_1__*,int ) ;
 int generic_getpath (struct fd*,char*) ;
 int lock (int *) ;
 struct task* proc_get_task (struct proc_entry*) ;
 int proc_put_task (struct task*) ;
 int unlock (int *) ;

__attribute__((used)) static int proc_pid_fd_readlink(struct proc_entry *entry, char *buf) {
    struct task *task = proc_get_task(entry);
    if (task == ((void*)0))
        return _ESRCH;
    lock(&task->files->lock);
    struct fd *fd = fdtable_get(task->files, entry->fd);
    int err = generic_getpath(fd, buf);
    unlock(&task->files->lock);
    proc_put_task(task);
    return err;
}
