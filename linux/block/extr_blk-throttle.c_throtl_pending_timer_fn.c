
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct throtl_service_queue {scalar_t__* nr_queued; struct throtl_service_queue* parent_sq; } ;
struct throtl_grp {int flags; } ;
struct throtl_data {int dispatch_work; struct request_queue* queue; } ;
struct request_queue {int queue_lock; } ;


 size_t READ ;
 int THROTL_TG_WAS_EMPTY ;
 size_t WRITE ;
 int cpu_relax () ;
 struct throtl_service_queue* from_timer (int ,struct timer_list*,int ) ;
 int kthrotld_workqueue ;
 int pending_timer ;
 int queue_work (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct throtl_service_queue* sq ;
 struct throtl_data* sq_to_td (struct throtl_service_queue*) ;
 struct throtl_grp* sq_to_tg (struct throtl_service_queue*) ;
 int tg_update_disptime (struct throtl_grp*) ;
 scalar_t__ throtl_can_upgrade (struct throtl_data*,int *) ;
 int throtl_log (struct throtl_service_queue*,char*,int,...) ;
 scalar_t__ throtl_schedule_next_dispatch (struct throtl_service_queue*,int) ;
 int throtl_select_dispatch (struct throtl_service_queue*) ;
 int throtl_upgrade_state (struct throtl_data*) ;

__attribute__((used)) static void throtl_pending_timer_fn(struct timer_list *t)
{
 struct throtl_service_queue *sq = from_timer(sq, t, pending_timer);
 struct throtl_grp *tg = sq_to_tg(sq);
 struct throtl_data *td = sq_to_td(sq);
 struct request_queue *q = td->queue;
 struct throtl_service_queue *parent_sq;
 bool dispatched;
 int ret;

 spin_lock_irq(&q->queue_lock);
 if (throtl_can_upgrade(td, ((void*)0)))
  throtl_upgrade_state(td);

again:
 parent_sq = sq->parent_sq;
 dispatched = 0;

 while (1) {
  throtl_log(sq, "dispatch nr_queued=%u read=%u write=%u",
      sq->nr_queued[READ] + sq->nr_queued[WRITE],
      sq->nr_queued[READ], sq->nr_queued[WRITE]);

  ret = throtl_select_dispatch(sq);
  if (ret) {
   throtl_log(sq, "bios disp=%u", ret);
   dispatched = 1;
  }

  if (throtl_schedule_next_dispatch(sq, 0))
   break;


  spin_unlock_irq(&q->queue_lock);
  cpu_relax();
  spin_lock_irq(&q->queue_lock);
 }

 if (!dispatched)
  goto out_unlock;

 if (parent_sq) {

  if (tg->flags & THROTL_TG_WAS_EMPTY) {
   tg_update_disptime(tg);
   if (!throtl_schedule_next_dispatch(parent_sq, 0)) {

    sq = parent_sq;
    tg = sq_to_tg(sq);
    goto again;
   }
  }
 } else {

  queue_work(kthrotld_workqueue, &td->dispatch_work);
 }
out_unlock:
 spin_unlock_irq(&q->queue_lock);
}
