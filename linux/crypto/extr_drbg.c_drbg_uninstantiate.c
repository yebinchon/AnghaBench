
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ func; } ;
struct drbg_state {TYPE_1__* d_ops; int * jent; int seed_work; TYPE_2__ random_ready; } ;
struct TYPE_3__ {int (* crypto_fini ) (struct drbg_state*) ;} ;


 int cancel_work_sync (int *) ;
 int crypto_free_rng (int *) ;
 int del_random_ready_callback (TYPE_2__*) ;
 int drbg_dealloc_state (struct drbg_state*) ;
 int stub1 (struct drbg_state*) ;

__attribute__((used)) static int drbg_uninstantiate(struct drbg_state *drbg)
{
 if (drbg->random_ready.func) {
  del_random_ready_callback(&drbg->random_ready);
  cancel_work_sync(&drbg->seed_work);
  crypto_free_rng(drbg->jent);
  drbg->jent = ((void*)0);
 }

 if (drbg->d_ops)
  drbg->d_ops->crypto_fini(drbg);
 drbg_dealloc_state(drbg);

 return 0;
}
