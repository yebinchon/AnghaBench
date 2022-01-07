
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct crypto_comp {int dummy; } ;
typedef struct crypto_comp crypto_acomp ;
struct TYPE_6__ {int count; int vecs; } ;
struct TYPE_5__ {int count; int vecs; } ;
struct TYPE_7__ {TYPE_2__ decomp; TYPE_1__ comp; } ;
struct TYPE_8__ {TYPE_3__ comp; } ;
struct alg_test_desc {TYPE_4__ suite; } ;


 scalar_t__ CRYPTO_ALG_TYPE_ACOMPRESS ;
 scalar_t__ CRYPTO_ALG_TYPE_ACOMPRESS_MASK ;
 scalar_t__ IS_ERR (struct crypto_comp*) ;
 int PTR_ERR (struct crypto_comp*) ;
 struct crypto_comp* crypto_alloc_acomp (char const*,scalar_t__,scalar_t__) ;
 struct crypto_comp* crypto_alloc_comp (char const*,scalar_t__,scalar_t__) ;
 int crypto_free_acomp (struct crypto_comp*) ;
 int crypto_free_comp (struct crypto_comp*) ;
 int pr_err (char*,char const*,int) ;
 int test_acomp (struct crypto_comp*,int ,int ,int ,int ) ;
 int test_comp (struct crypto_comp*,int ,int ,int ,int ) ;

__attribute__((used)) static int alg_test_comp(const struct alg_test_desc *desc, const char *driver,
    u32 type, u32 mask)
{
 struct crypto_comp *comp;
 struct crypto_acomp *acomp;
 int err;
 u32 algo_type = type & CRYPTO_ALG_TYPE_ACOMPRESS_MASK;

 if (algo_type == CRYPTO_ALG_TYPE_ACOMPRESS) {
  acomp = crypto_alloc_acomp(driver, type, mask);
  if (IS_ERR(acomp)) {
   pr_err("alg: acomp: Failed to load transform for %s: %ld\n",
          driver, PTR_ERR(acomp));
   return PTR_ERR(acomp);
  }
  err = test_acomp(acomp, desc->suite.comp.comp.vecs,
     desc->suite.comp.decomp.vecs,
     desc->suite.comp.comp.count,
     desc->suite.comp.decomp.count);
  crypto_free_acomp(acomp);
 } else {
  comp = crypto_alloc_comp(driver, type, mask);
  if (IS_ERR(comp)) {
   pr_err("alg: comp: Failed to load transform for %s: %ld\n",
          driver, PTR_ERR(comp));
   return PTR_ERR(comp);
  }

  err = test_comp(comp, desc->suite.comp.comp.vecs,
    desc->suite.comp.decomp.vecs,
    desc->suite.comp.comp.count,
    desc->suite.comp.decomp.count);

  crypto_free_comp(comp);
 }
 return err;
}
