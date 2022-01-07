
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct crypto_kpp {int dummy; } ;
struct TYPE_3__ {int count; int vecs; } ;
struct TYPE_4__ {TYPE_1__ kpp; } ;
struct alg_test_desc {TYPE_2__ suite; int alg; } ;


 scalar_t__ IS_ERR (struct crypto_kpp*) ;
 int PTR_ERR (struct crypto_kpp*) ;
 struct crypto_kpp* crypto_alloc_kpp (char const*,int ,int ) ;
 int crypto_free_kpp (struct crypto_kpp*) ;
 int pr_err (char*,char const*,int) ;
 int test_kpp (struct crypto_kpp*,int ,int ,int ) ;

__attribute__((used)) static int alg_test_kpp(const struct alg_test_desc *desc, const char *driver,
   u32 type, u32 mask)
{
 struct crypto_kpp *tfm;
 int err = 0;

 tfm = crypto_alloc_kpp(driver, type, mask);
 if (IS_ERR(tfm)) {
  pr_err("alg: kpp: Failed to load tfm for %s: %ld\n",
         driver, PTR_ERR(tfm));
  return PTR_ERR(tfm);
 }
 if (desc->suite.kpp.vecs)
  err = test_kpp(tfm, desc->alg, desc->suite.kpp.vecs,
          desc->suite.kpp.count);

 crypto_free_kpp(tfm);
 return err;
}
