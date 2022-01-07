
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_alg {int dummy; } ;


 int crypto_register_ahash (struct ahash_alg*) ;
 int crypto_unregister_ahash (struct ahash_alg*) ;

int crypto_register_ahashes(struct ahash_alg *algs, int count)
{
 int i, ret;

 for (i = 0; i < count; i++) {
  ret = crypto_register_ahash(&algs[i]);
  if (ret)
   goto err;
 }

 return 0;

err:
 for (--i; i >= 0; --i)
  crypto_unregister_ahash(&algs[i]);

 return ret;
}
