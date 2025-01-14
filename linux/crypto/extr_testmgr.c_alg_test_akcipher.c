
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct crypto_akcipher {int dummy; } ;
struct TYPE_3__ {int count; int vecs; } ;
struct TYPE_4__ {TYPE_1__ akcipher; } ;
struct alg_test_desc {TYPE_2__ suite; int alg; } ;


 scalar_t__ IS_ERR (struct crypto_akcipher*) ;
 int PTR_ERR (struct crypto_akcipher*) ;
 struct crypto_akcipher* crypto_alloc_akcipher (char const*,int ,int ) ;
 int crypto_free_akcipher (struct crypto_akcipher*) ;
 int pr_err (char*,char const*,int) ;
 int test_akcipher (struct crypto_akcipher*,int ,int ,int ) ;

__attribute__((used)) static int alg_test_akcipher(const struct alg_test_desc *desc,
        const char *driver, u32 type, u32 mask)
{
 struct crypto_akcipher *tfm;
 int err = 0;

 tfm = crypto_alloc_akcipher(driver, type, mask);
 if (IS_ERR(tfm)) {
  pr_err("alg: akcipher: Failed to load tfm for %s: %ld\n",
         driver, PTR_ERR(tfm));
  return PTR_ERR(tfm);
 }
 if (desc->suite.akcipher.vecs)
  err = test_akcipher(tfm, desc->alg, desc->suite.akcipher.vecs,
        desc->suite.akcipher.count);

 crypto_free_akcipher(tfm);
 return err;
}
