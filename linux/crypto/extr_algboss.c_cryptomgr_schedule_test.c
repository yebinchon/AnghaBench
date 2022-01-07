
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;
struct crypto_test_param {int type; int alg; int driver; } ;
struct crypto_alg {int cra_flags; int cra_name; int cra_driver_name; } ;


 int CRYPTO_ALG_INTERNAL ;
 int CRYPTO_ALG_TESTED ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int NOTIFY_OK ;
 int NOTIFY_STOP ;
 int THIS_MODULE ;
 int cryptomgr_test ;
 int kfree (struct crypto_test_param*) ;
 struct task_struct* kthread_run (int ,struct crypto_test_param*,char*) ;
 struct crypto_test_param* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int module_put (int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int cryptomgr_schedule_test(struct crypto_alg *alg)
{
 struct task_struct *thread;
 struct crypto_test_param *param;
 u32 type;

 if (!try_module_get(THIS_MODULE))
  goto err;

 param = kzalloc(sizeof(*param), GFP_KERNEL);
 if (!param)
  goto err_put_module;

 memcpy(param->driver, alg->cra_driver_name, sizeof(param->driver));
 memcpy(param->alg, alg->cra_name, sizeof(param->alg));
 type = alg->cra_flags;


 if (type & CRYPTO_ALG_INTERNAL)
  type |= CRYPTO_ALG_TESTED;

 param->type = type;

 thread = kthread_run(cryptomgr_test, param, "cryptomgr_test");
 if (IS_ERR(thread))
  goto err_free_param;

 return NOTIFY_STOP;

err_free_param:
 kfree(param);
err_put_module:
 module_put(THIS_MODULE);
err:
 return NOTIFY_OK;
}
