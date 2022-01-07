
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acomp_alg {int dummy; } ;


 int crypto_register_acomp (struct acomp_alg*) ;
 int crypto_unregister_acomp (struct acomp_alg*) ;

int crypto_register_acomps(struct acomp_alg *algs, int count)
{
 int i, ret;

 for (i = 0; i < count; i++) {
  ret = crypto_register_acomp(&algs[i]);
  if (ret)
   goto err;
 }

 return 0;

err:
 for (--i; i >= 0; --i)
  crypto_unregister_acomp(&algs[i]);

 return ret;
}
