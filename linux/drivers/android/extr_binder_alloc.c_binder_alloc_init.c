
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct binder_alloc {int buffers; int mutex; int pid; } ;
struct TYPE_4__ {TYPE_1__* group_leader; } ;
struct TYPE_3__ {int pid; } ;


 int INIT_LIST_HEAD (int *) ;
 TYPE_2__* current ;
 int mutex_init (int *) ;

void binder_alloc_init(struct binder_alloc *alloc)
{
 alloc->pid = current->group_leader->pid;
 mutex_init(&alloc->mutex);
 INIT_LIST_HEAD(&alloc->buffers);
}
