
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef long uint32_t ;
struct tty {int fg_group; int num; TYPE_2__* driver; } ;
struct task {int general_lock; TYPE_6__* group; TYPE_5__* sighand; int exit_signal; scalar_t__ blocked; scalar_t__ pending; TYPE_3__* mm; TYPE_1__* parent; scalar_t__ zombie; int comm; int pid; } ;
struct proc_entry {int dummy; } ;
struct proc_data {int dummy; } ;
struct TYPE_12__ {int lock; int threads; struct tty* tty; int sid; int pgid; scalar_t__ stopped; } ;
struct TYPE_11__ {int lock; TYPE_4__* action; } ;
struct TYPE_10__ {scalar_t__ handler; } ;
struct TYPE_9__ {int stack_start; } ;
struct TYPE_8__ {int major; } ;
struct TYPE_7__ {int pid; } ;


 scalar_t__ SIG_DFL_ ;
 scalar_t__ SIG_IGN_ ;
 int _ESRCH ;
 int dev_make (int ,int ) ;
 int list_size (int *) ;
 int lock (int *) ;
 struct task* proc_get_task (struct proc_entry*) ;
 int proc_printf (struct proc_data*,char*,...) ;
 int proc_put_task (struct task*) ;
 int unlock (int *) ;

__attribute__((used)) static int proc_pid_stat_show(struct proc_entry *entry, struct proc_data *buf) {
    struct task *task = proc_get_task(entry);
    if (task == ((void*)0))
        return _ESRCH;
    lock(&task->general_lock);
    lock(&task->group->lock);
    lock(&task->sighand->lock);

    proc_printf(buf, "%d ", task->pid);
    proc_printf(buf, "(%.16s) ", task->comm);
    proc_printf(buf, "%c ",
            task->zombie ? 'Z' :
            task->group->stopped ? 'T' :
            'R');
    proc_printf(buf, "%d ", task->parent ? task->parent->pid : 0);
    proc_printf(buf, "%d ", task->group->pgid);
    proc_printf(buf, "%d ", task->group->sid);
    struct tty *tty = task->group->tty;
    proc_printf(buf, "%d ", tty ? dev_make(tty->driver->major, tty->num) : 0);
    proc_printf(buf, "%d ", tty ? tty->fg_group : 0);
    proc_printf(buf, "%u ", 0);


    proc_printf(buf, "%lu ", 0l);
    proc_printf(buf, "%lu ", 0l);
    proc_printf(buf, "%lu ", 0l);
    proc_printf(buf, "%lu ", 0l);



    proc_printf(buf, "%lu ", 0l);
    proc_printf(buf, "%lu ", 0l);
    proc_printf(buf, "%ld ", 0l);
    proc_printf(buf, "%ld ", 0l);

    proc_printf(buf, "%ld ", 20l);
    proc_printf(buf, "%ld ", 0l);
    proc_printf(buf, "%ld ", list_size(&task->group->threads));
    proc_printf(buf, "%ld ", 0l);
    proc_printf(buf, "%lld ", 0ll);

    proc_printf(buf, "%lu ", 0l);
    proc_printf(buf, "%ld ", 0l);
    proc_printf(buf, "%lu ", 0l);


    proc_printf(buf, "%lu ", 0l);
    proc_printf(buf, "%lu ", 0l);
    proc_printf(buf, "%lu ", task->mm->stack_start);
    proc_printf(buf, "%lu ", 0l);
    proc_printf(buf, "%lu ", 0l);

    proc_printf(buf, "%lu ", (unsigned long) task->pending & 0xffffffff);
    proc_printf(buf, "%lu ", (unsigned long) task->blocked & 0xffffffff);
    uint32_t ignored = 0;
    uint32_t caught = 0;
    for (int i = 0; i < 32; i++) {
        if (task->sighand->action[i].handler == SIG_IGN_)
            ignored |= 1l << i;
        else if (task->sighand->action[i].handler != SIG_DFL_)
            caught |= 1l << i;
    }
    proc_printf(buf, "%lu ", (unsigned long) ignored);
    proc_printf(buf, "%lu ", (unsigned long) caught);

    proc_printf(buf, "%lu ", 0l);
    proc_printf(buf, "%lu ", 0l);
    proc_printf(buf, "%lu ", 0l);
    proc_printf(buf, "%d", task->exit_signal);

    proc_printf(buf, "\n");

    unlock(&task->sighand->lock);
    unlock(&task->group->lock);
    unlock(&task->general_lock);
    proc_put_task(task);
    return 0;
}
