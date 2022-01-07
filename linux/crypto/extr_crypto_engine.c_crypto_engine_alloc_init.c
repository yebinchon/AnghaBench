
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sched_param {int sched_priority; } ;
struct device {int dummy; } ;
struct crypto_engine {int rt; int running; int busy; int idling; int cur_req_prepared; TYPE_1__* kworker; int pump_requests; int name; int queue_lock; int queue; struct device* priv_data; struct device* dev; } ;
struct TYPE_3__ {int task; } ;


 int CRYPTO_ENGINE_MAX_QLEN ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int MAX_RT_PRIO ;
 int SCHED_FIFO ;
 int crypto_init_queue (int *,int ) ;
 int crypto_pump_work ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 char* dev_name (struct device*) ;
 struct crypto_engine* devm_kzalloc (struct device*,int,int ) ;
 TYPE_1__* kthread_create_worker (int ,char*,int ) ;
 int kthread_init_work (int *,int ) ;
 int sched_setscheduler (int ,int ,struct sched_param*) ;
 int snprintf (int ,int,char*,char*) ;
 int spin_lock_init (int *) ;

struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt)
{
 struct sched_param param = { .sched_priority = MAX_RT_PRIO / 2 };
 struct crypto_engine *engine;

 if (!dev)
  return ((void*)0);

 engine = devm_kzalloc(dev, sizeof(*engine), GFP_KERNEL);
 if (!engine)
  return ((void*)0);

 engine->dev = dev;
 engine->rt = rt;
 engine->running = 0;
 engine->busy = 0;
 engine->idling = 0;
 engine->cur_req_prepared = 0;
 engine->priv_data = dev;
 snprintf(engine->name, sizeof(engine->name),
   "%s-engine", dev_name(dev));

 crypto_init_queue(&engine->queue, CRYPTO_ENGINE_MAX_QLEN);
 spin_lock_init(&engine->queue_lock);

 engine->kworker = kthread_create_worker(0, "%s", engine->name);
 if (IS_ERR(engine->kworker)) {
  dev_err(dev, "failed to create crypto request pump task\n");
  return ((void*)0);
 }
 kthread_init_work(&engine->pump_requests, crypto_pump_work);

 if (engine->rt) {
  dev_info(dev, "will run requests pump with realtime priority\n");
  sched_setscheduler(engine->kworker->task, SCHED_FIFO, &param);
 }

 return engine;
}
