
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_akcipher {int dummy; } ;
struct akcipher_testvec {int dummy; } ;


 int crypto_akcipher_tfm (struct crypto_akcipher*) ;
 char* crypto_tfm_alg_driver_name (int ) ;
 int pr_err (char*,int,char const*,int) ;
 int test_akcipher_one (struct crypto_akcipher*,int ) ;

__attribute__((used)) static int test_akcipher(struct crypto_akcipher *tfm, const char *alg,
    const struct akcipher_testvec *vecs,
    unsigned int tcount)
{
 const char *algo =
  crypto_tfm_alg_driver_name(crypto_akcipher_tfm(tfm));
 int ret, i;

 for (i = 0; i < tcount; i++) {
  ret = test_akcipher_one(tfm, vecs++);
  if (!ret)
   continue;

  pr_err("alg: akcipher: test %d failed for %s, err=%d\n",
         i + 1, algo, ret);
  return ret;
 }
 return 0;
}
