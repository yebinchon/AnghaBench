
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cra_driver_name; } ;
struct crypto_larval {TYPE_1__ alg; int completion; struct crypto_larval* adult; } ;


 int CRYPTO_MSG_ALG_LOADED ;
 int CRYPTO_MSG_ALG_REGISTER ;
 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 scalar_t__ WARN_ON (int) ;
 int crypto_alg_tested (int ,int ) ;
 int crypto_larval_kill (TYPE_1__*) ;
 int crypto_probing_notify (int ,struct crypto_larval*) ;
 int wait_for_completion_killable (int *) ;

__attribute__((used)) static void crypto_wait_for_test(struct crypto_larval *larval)
{
 int err;

 err = crypto_probing_notify(CRYPTO_MSG_ALG_REGISTER, larval->adult);
 if (err != NOTIFY_STOP) {
  if (WARN_ON(err != NOTIFY_DONE))
   goto out;
  crypto_alg_tested(larval->alg.cra_driver_name, 0);
 }

 err = wait_for_completion_killable(&larval->completion);
 WARN_ON(err);
 if (!err)
  crypto_probing_notify(CRYPTO_MSG_ALG_LOADED, larval);

out:
 crypto_larval_kill(&larval->alg);
}
