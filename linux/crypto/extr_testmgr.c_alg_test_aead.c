
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct crypto_aead {int dummy; } ;
struct cipher_test_sglists {int dummy; } ;
struct aead_test_suite {scalar_t__ count; } ;
struct TYPE_2__ {struct aead_test_suite aead; } ;
struct alg_test_desc {TYPE_1__ suite; } ;
struct aead_request {int dummy; } ;


 int DECRYPT ;
 int EINVAL ;
 int ENCRYPT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_aead*) ;
 int PTR_ERR (struct crypto_aead*) ;
 struct aead_request* aead_request_alloc (struct crypto_aead*,int ) ;
 int aead_request_free (struct aead_request*) ;
 struct cipher_test_sglists* alloc_cipher_test_sglists () ;
 struct crypto_aead* crypto_alloc_aead (char const*,int ,int ) ;
 int crypto_free_aead (struct crypto_aead*) ;
 int free_cipher_test_sglists (struct cipher_test_sglists*) ;
 int pr_err (char*,char const*,...) ;
 int test_aead (char const*,int ,struct aead_test_suite const*,struct aead_request*,struct cipher_test_sglists*) ;
 int test_aead_vs_generic_impl (char const*,struct alg_test_desc const*,struct aead_request*,struct cipher_test_sglists*) ;

__attribute__((used)) static int alg_test_aead(const struct alg_test_desc *desc, const char *driver,
    u32 type, u32 mask)
{
 const struct aead_test_suite *suite = &desc->suite.aead;
 struct crypto_aead *tfm;
 struct aead_request *req = ((void*)0);
 struct cipher_test_sglists *tsgls = ((void*)0);
 int err;

 if (suite->count <= 0) {
  pr_err("alg: aead: empty test suite for %s\n", driver);
  return -EINVAL;
 }

 tfm = crypto_alloc_aead(driver, type, mask);
 if (IS_ERR(tfm)) {
  pr_err("alg: aead: failed to allocate transform for %s: %ld\n",
         driver, PTR_ERR(tfm));
  return PTR_ERR(tfm);
 }

 req = aead_request_alloc(tfm, GFP_KERNEL);
 if (!req) {
  pr_err("alg: aead: failed to allocate request for %s\n",
         driver);
  err = -ENOMEM;
  goto out;
 }

 tsgls = alloc_cipher_test_sglists();
 if (!tsgls) {
  pr_err("alg: aead: failed to allocate test buffers for %s\n",
         driver);
  err = -ENOMEM;
  goto out;
 }

 err = test_aead(driver, ENCRYPT, suite, req, tsgls);
 if (err)
  goto out;

 err = test_aead(driver, DECRYPT, suite, req, tsgls);
 if (err)
  goto out;

 err = test_aead_vs_generic_impl(driver, desc, req, tsgls);
out:
 free_cipher_test_sglists(tsgls);
 aead_request_free(req);
 crypto_free_aead(tfm);
 return err;
}
