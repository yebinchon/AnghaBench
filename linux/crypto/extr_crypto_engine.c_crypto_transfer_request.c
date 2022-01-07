
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_engine {int queue_lock; int pump_requests; int kworker; int busy; int queue; int running; } ;
struct crypto_async_request {int dummy; } ;


 int ESHUTDOWN ;
 int crypto_enqueue_request (int *,struct crypto_async_request*) ;
 int kthread_queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int crypto_transfer_request(struct crypto_engine *engine,
       struct crypto_async_request *req,
       bool need_pump)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&engine->queue_lock, flags);

 if (!engine->running) {
  spin_unlock_irqrestore(&engine->queue_lock, flags);
  return -ESHUTDOWN;
 }

 ret = crypto_enqueue_request(&engine->queue, req);

 if (!engine->busy && need_pump)
  kthread_queue_work(engine->kworker, &engine->pump_requests);

 spin_unlock_irqrestore(&engine->queue_lock, flags);
 return ret;
}
