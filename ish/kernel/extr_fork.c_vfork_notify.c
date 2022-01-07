
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task {TYPE_1__* vfork; } ;
struct TYPE_2__ {int done; int lock; int cond; } ;


 int lock (int *) ;
 int notify (int *) ;
 int unlock (int *) ;

void vfork_notify(struct task *task) {
    if (task->vfork) {
        lock(&task->vfork->lock);
        task->vfork->done = 1;
        notify(&task->vfork->cond);
        unlock(&task->vfork->lock);
    }
}
