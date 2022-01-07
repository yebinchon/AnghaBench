
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drbd_thread {int* name; int (* function ) (struct drbd_thread*) ;scalar_t__ t_state; TYPE_1__* connection; int t_lock; int stop; int * task; struct drbd_resource* resource; } ;
struct drbd_resource {char* name; int kref; } ;
struct TYPE_4__ {int* comm; } ;
struct TYPE_3__ {int kref; } ;


 int DRBD_SIGKILL ;
 scalar_t__ NONE ;
 scalar_t__ RESTARTING ;
 scalar_t__ RUNNING ;
 int SIGXCPU ;
 int THIS_MODULE ;
 int allow_kernel_signal (int ) ;
 int complete_all (int *) ;
 TYPE_2__* current ;
 int drbd_destroy_connection ;
 int drbd_destroy_resource ;
 int drbd_info (struct drbd_resource*,char*,int*) ;
 int kref_put (int *,int ) ;
 int module_put (int ) ;
 int smp_mb () ;
 int snprintf (int*,int,char*,int,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct drbd_thread*) ;

__attribute__((used)) static int drbd_thread_setup(void *arg)
{
 struct drbd_thread *thi = (struct drbd_thread *) arg;
 struct drbd_resource *resource = thi->resource;
 unsigned long flags;
 int retval;

 snprintf(current->comm, sizeof(current->comm), "drbd_%c_%s",
   thi->name[0],
   resource->name);

 allow_kernel_signal(DRBD_SIGKILL);
 allow_kernel_signal(SIGXCPU);
restart:
 retval = thi->function(thi);

 spin_lock_irqsave(&thi->t_lock, flags);
 if (thi->t_state == RESTARTING) {
  drbd_info(resource, "Restarting %s thread\n", thi->name);
  thi->t_state = RUNNING;
  spin_unlock_irqrestore(&thi->t_lock, flags);
  goto restart;
 }

 thi->task = ((void*)0);
 thi->t_state = NONE;
 smp_mb();
 complete_all(&thi->stop);
 spin_unlock_irqrestore(&thi->t_lock, flags);

 drbd_info(resource, "Terminating %s\n", current->comm);



 if (thi->connection)
  kref_put(&thi->connection->kref, drbd_destroy_connection);
 kref_put(&resource->kref, drbd_destroy_resource);
 module_put(THIS_MODULE);
 return retval;
}
