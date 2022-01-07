
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_template {int instances; int module; } ;
struct crypto_larval {int dummy; } ;
struct TYPE_3__ {int cra_flags; int cra_module; } ;
struct crypto_instance {struct crypto_template* tmpl; int list; TYPE_1__ alg; } ;


 int CRYPTO_ALG_INSTANCE ;
 scalar_t__ IS_ERR (struct crypto_larval*) ;
 int PTR_ERR (struct crypto_larval*) ;
 struct crypto_larval* __crypto_register_alg (TYPE_1__*) ;
 int crypto_alg_sem ;
 int crypto_check_alg (TYPE_1__*) ;
 int crypto_wait_for_test (struct crypto_larval*) ;
 int down_write (int *) ;
 int hlist_add_head (int *,int *) ;
 int up_write (int *) ;

int crypto_register_instance(struct crypto_template *tmpl,
        struct crypto_instance *inst)
{
 struct crypto_larval *larval;
 int err;

 err = crypto_check_alg(&inst->alg);
 if (err)
  return err;

 inst->alg.cra_module = tmpl->module;
 inst->alg.cra_flags |= CRYPTO_ALG_INSTANCE;

 down_write(&crypto_alg_sem);

 larval = __crypto_register_alg(&inst->alg);
 if (IS_ERR(larval))
  goto unlock;

 hlist_add_head(&inst->list, &tmpl->instances);
 inst->tmpl = tmpl;

unlock:
 up_write(&crypto_alg_sem);

 err = PTR_ERR(larval);
 if (IS_ERR(larval))
  goto err;

 crypto_wait_for_test(larval);
 err = 0;

err:
 return err;
}
