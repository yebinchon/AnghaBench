
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int dummy; } ;


 int crypto_register_alg (struct crypto_alg*) ;
 int crypto_unregister_alg (struct crypto_alg*) ;

int crypto_register_algs(struct crypto_alg *algs, int count)
{
 int i, ret;

 for (i = 0; i < count; i++) {
  ret = crypto_register_alg(&algs[i]);
  if (ret)
   goto err;
 }

 return 0;

err:
 for (--i; i >= 0; --i)
  crypto_unregister_alg(&algs[i]);

 return ret;
}
