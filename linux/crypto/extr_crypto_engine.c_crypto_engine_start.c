
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_engine {int running; int pump_requests; int kworker; int queue_lock; scalar_t__ busy; } ;


 int EBUSY ;
 int kthread_queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int crypto_engine_start(struct crypto_engine *engine)
{
 unsigned long flags;

 spin_lock_irqsave(&engine->queue_lock, flags);

 if (engine->running || engine->busy) {
  spin_unlock_irqrestore(&engine->queue_lock, flags);
  return -EBUSY;
 }

 engine->running = 1;
 spin_unlock_irqrestore(&engine->queue_lock, flags);

 kthread_queue_work(engine->kworker, &engine->pump_requests);

 return 0;
}
