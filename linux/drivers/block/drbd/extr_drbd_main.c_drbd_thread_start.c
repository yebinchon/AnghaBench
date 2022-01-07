
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct drbd_thread {int t_state; int reset_cpu_mask; int t_lock; int * name; struct task_struct* task; TYPE_1__* connection; struct drbd_resource* resource; int stop; } ;
struct drbd_resource {int kref; int name; } ;
struct TYPE_5__ {int pid; int comm; } ;
struct TYPE_4__ {int kref; } ;



 int IS_ERR (struct task_struct*) ;



 int THIS_MODULE ;
 TYPE_2__* current ;
 int drbd_destroy_connection ;
 int drbd_destroy_resource ;
 int drbd_err (struct drbd_resource*,char*) ;
 int drbd_info (struct drbd_resource*,char*,int *,int ,int ) ;
 int drbd_thread_setup ;
 int flush_signals (TYPE_2__*) ;
 int init_completion (int *) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 struct task_struct* kthread_create (int ,void*,char*,int ,int ) ;
 int module_put (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int try_module_get (int ) ;
 int wake_up_process (struct task_struct*) ;

int drbd_thread_start(struct drbd_thread *thi)
{
 struct drbd_resource *resource = thi->resource;
 struct task_struct *nt;
 unsigned long flags;



 spin_lock_irqsave(&thi->t_lock, flags);

 switch (thi->t_state) {
 case 130:
  drbd_info(resource, "Starting %s thread (from %s [%d])\n",
    thi->name, current->comm, current->pid);


  if (!try_module_get(THIS_MODULE)) {
   drbd_err(resource, "Failed to get module reference in drbd_thread_start\n");
   spin_unlock_irqrestore(&thi->t_lock, flags);
   return 0;
  }

  kref_get(&resource->kref);
  if (thi->connection)
   kref_get(&thi->connection->kref);

  init_completion(&thi->stop);
  thi->reset_cpu_mask = 1;
  thi->t_state = 128;
  spin_unlock_irqrestore(&thi->t_lock, flags);
  flush_signals(current);

  nt = kthread_create(drbd_thread_setup, (void *) thi,
        "drbd_%c_%s", thi->name[0], thi->resource->name);

  if (IS_ERR(nt)) {
   drbd_err(resource, "Couldn't start thread\n");

   if (thi->connection)
    kref_put(&thi->connection->kref, drbd_destroy_connection);
   kref_put(&resource->kref, drbd_destroy_resource);
   module_put(THIS_MODULE);
   return 0;
  }
  spin_lock_irqsave(&thi->t_lock, flags);
  thi->task = nt;
  thi->t_state = 128;
  spin_unlock_irqrestore(&thi->t_lock, flags);
  wake_up_process(nt);
  break;
 case 131:
  thi->t_state = 129;
  drbd_info(resource, "Restarting %s thread (from %s [%d])\n",
    thi->name, current->comm, current->pid);

 case 128:
 case 129:
 default:
  spin_unlock_irqrestore(&thi->t_lock, flags);
  break;
 }

 return 1;
}
