
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tgroup {TYPE_1__* tty; int sid; int session; } ;
struct task {struct tgroup* group; } ;
struct TYPE_4__ {int session; } ;
struct TYPE_3__ {int lock; scalar_t__ session; } ;


 scalar_t__ list_empty (int *) ;
 int list_remove_safe (int *) ;
 int lock (int *) ;
 TYPE_2__* pid_get (int ) ;
 int tty_release (TYPE_1__*) ;
 int ttys_lock ;
 int unlock (int *) ;

void task_leave_session(struct task *task) {
    struct tgroup *group = task->group;
    list_remove_safe(&group->session);
    if (group->tty) {
        lock(&ttys_lock);
        if (list_empty(&pid_get(group->sid)->session)) {
            lock(&group->tty->lock);
            group->tty->session = 0;
            unlock(&group->tty->lock);
        }
        tty_release(group->tty);
        group->tty = ((void*)0);
        unlock(&ttys_lock);
    }
}
