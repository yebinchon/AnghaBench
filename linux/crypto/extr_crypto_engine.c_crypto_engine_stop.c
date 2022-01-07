
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_engine {int running; int dev; int queue_lock; scalar_t__ busy; int queue; } ;


 int EBUSY ;
 scalar_t__ crypto_queue_len (int *) ;
 int dev_warn (int ,char*) ;
 int msleep (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int crypto_engine_stop(struct crypto_engine *engine)
{
 unsigned long flags;
 unsigned int limit = 500;
 int ret = 0;

 spin_lock_irqsave(&engine->queue_lock, flags);





 while ((crypto_queue_len(&engine->queue) || engine->busy) && limit--) {
  spin_unlock_irqrestore(&engine->queue_lock, flags);
  msleep(20);
  spin_lock_irqsave(&engine->queue_lock, flags);
 }

 if (crypto_queue_len(&engine->queue) || engine->busy)
  ret = -EBUSY;
 else
  engine->running = 0;

 spin_unlock_irqrestore(&engine->queue_lock, flags);

 if (ret)
  dev_warn(engine->dev, "could not stop engine\n");

 return ret;
}
