
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* unprepare_request ) (struct crypto_engine*,struct crypto_async_request*) ;} ;
struct crypto_engine_ctx {TYPE_1__ op; } ;
struct crypto_engine {int cur_req_prepared; int pump_requests; int kworker; int queue_lock; struct crypto_async_request* cur_req; int dev; } ;
struct crypto_async_request {int (* complete ) (struct crypto_async_request*,int) ;int tfm; } ;


 struct crypto_engine_ctx* crypto_tfm_ctx (int ) ;
 int dev_err (int ,char*) ;
 int kthread_queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct crypto_engine*,struct crypto_async_request*) ;
 int stub2 (struct crypto_async_request*,int) ;

__attribute__((used)) static void crypto_finalize_request(struct crypto_engine *engine,
        struct crypto_async_request *req, int err)
{
 unsigned long flags;
 bool finalize_cur_req = 0;
 int ret;
 struct crypto_engine_ctx *enginectx;

 spin_lock_irqsave(&engine->queue_lock, flags);
 if (engine->cur_req == req)
  finalize_cur_req = 1;
 spin_unlock_irqrestore(&engine->queue_lock, flags);

 if (finalize_cur_req) {
  enginectx = crypto_tfm_ctx(req->tfm);
  if (engine->cur_req_prepared &&
      enginectx->op.unprepare_request) {
   ret = enginectx->op.unprepare_request(engine, req);
   if (ret)
    dev_err(engine->dev, "failed to unprepare request\n");
  }
  spin_lock_irqsave(&engine->queue_lock, flags);
  engine->cur_req = ((void*)0);
  engine->cur_req_prepared = 0;
  spin_unlock_irqrestore(&engine->queue_lock, flags);
 }

 req->complete(req, err);

 kthread_queue_work(engine->kworker, &engine->pump_requests);
}
