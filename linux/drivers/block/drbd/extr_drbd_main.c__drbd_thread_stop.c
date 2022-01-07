
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_thread {scalar_t__ t_state; int stop; int t_lock; int * task; } ;
typedef enum drbd_thread_state { ____Placeholder_drbd_thread_state } drbd_thread_state ;


 int DRBD_SIGKILL ;
 int EXITING ;
 scalar_t__ NONE ;
 int RESTARTING ;
 int * current ;
 int drbd_thread_start (struct drbd_thread*) ;
 int init_completion (int *) ;
 int send_sig (int ,int *,int) ;
 int smp_mb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

void _drbd_thread_stop(struct drbd_thread *thi, int restart, int wait)
{
 unsigned long flags;

 enum drbd_thread_state ns = restart ? RESTARTING : EXITING;


 spin_lock_irqsave(&thi->t_lock, flags);

 if (thi->t_state == NONE) {
  spin_unlock_irqrestore(&thi->t_lock, flags);
  if (restart)
   drbd_thread_start(thi);
  return;
 }

 if (thi->t_state != ns) {
  if (thi->task == ((void*)0)) {
   spin_unlock_irqrestore(&thi->t_lock, flags);
   return;
  }

  thi->t_state = ns;
  smp_mb();
  init_completion(&thi->stop);
  if (thi->task != current)
   send_sig(DRBD_SIGKILL, thi->task, 1);
 }

 spin_unlock_irqrestore(&thi->t_lock, flags);

 if (wait)
  wait_for_completion(&thi->stop);
}
