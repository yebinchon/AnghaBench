
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int (* cra_destroy ) (struct crypto_alg*) ;int cra_refcnt; } ;


 int BUG_ON (int) ;
 int LIST_HEAD (int ) ;
 int crypto_alg_sem ;
 int crypto_remove_alg (struct crypto_alg*,int *) ;
 int crypto_remove_final (int *) ;
 int down_write (int *) ;
 int list ;
 int refcount_read (int *) ;
 int stub1 (struct crypto_alg*) ;
 int up_write (int *) ;

int crypto_unregister_alg(struct crypto_alg *alg)
{
 int ret;
 LIST_HEAD(list);

 down_write(&crypto_alg_sem);
 ret = crypto_remove_alg(alg, &list);
 up_write(&crypto_alg_sem);

 if (ret)
  return ret;

 BUG_ON(refcount_read(&alg->cra_refcnt) != 1);
 if (alg->cra_destroy)
  alg->cra_destroy(alg);

 crypto_remove_final(&list);
 return 0;
}
