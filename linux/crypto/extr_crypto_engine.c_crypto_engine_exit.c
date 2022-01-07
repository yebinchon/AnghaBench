
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_engine {int kworker; } ;


 int crypto_engine_stop (struct crypto_engine*) ;
 int kthread_destroy_worker (int ) ;

int crypto_engine_exit(struct crypto_engine *engine)
{
 int ret;

 ret = crypto_engine_stop(engine);
 if (ret)
  return ret;

 kthread_destroy_worker(engine->kworker);

 return 0;
}
