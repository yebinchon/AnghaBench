
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct crypto_akcipher {int dummy; } ;
struct akcipher_alg {int (* exit ) (struct crypto_akcipher*) ;} ;


 struct crypto_akcipher* __crypto_akcipher_tfm (struct crypto_tfm*) ;
 struct akcipher_alg* crypto_akcipher_alg (struct crypto_akcipher*) ;
 int stub1 (struct crypto_akcipher*) ;

__attribute__((used)) static void crypto_akcipher_exit_tfm(struct crypto_tfm *tfm)
{
 struct crypto_akcipher *akcipher = __crypto_akcipher_tfm(tfm);
 struct akcipher_alg *alg = crypto_akcipher_alg(akcipher);

 alg->exit(akcipher);
}
