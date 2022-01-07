
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_skcipher {int dummy; } ;
struct crypto_ccm_req_priv_ctx {int dummy; } ;
struct crypto_ccm_ctx {struct crypto_skcipher* ctr; struct crypto_skcipher* mac; } ;
typedef struct crypto_skcipher crypto_ahash ;
struct crypto_aead {int dummy; } ;
struct ccm_instance_ctx {int ctr; int mac; } ;
struct aead_instance {int dummy; } ;


 scalar_t__ IS_ERR (struct crypto_skcipher*) ;
 int PTR_ERR (struct crypto_skcipher*) ;
 struct aead_instance* aead_alg_instance (struct crypto_aead*) ;
 struct ccm_instance_ctx* aead_instance_ctx (struct aead_instance*) ;
 unsigned long crypto_aead_alignmask (struct crypto_aead*) ;
 struct crypto_ccm_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_set_reqsize (struct crypto_aead*,scalar_t__) ;
 int crypto_ahash_reqsize (struct crypto_skcipher*) ;
 int crypto_free_ahash (struct crypto_skcipher*) ;
 int crypto_skcipher_reqsize (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_spawn_ahash (int *) ;
 struct crypto_skcipher* crypto_spawn_skcipher (int *) ;
 int crypto_tfm_ctx_alignment () ;
 scalar_t__ max (int ,int ) ;

__attribute__((used)) static int crypto_ccm_init_tfm(struct crypto_aead *tfm)
{
 struct aead_instance *inst = aead_alg_instance(tfm);
 struct ccm_instance_ctx *ictx = aead_instance_ctx(inst);
 struct crypto_ccm_ctx *ctx = crypto_aead_ctx(tfm);
 struct crypto_ahash *mac;
 struct crypto_skcipher *ctr;
 unsigned long align;
 int err;

 mac = crypto_spawn_ahash(&ictx->mac);
 if (IS_ERR(mac))
  return PTR_ERR(mac);

 ctr = crypto_spawn_skcipher(&ictx->ctr);
 err = PTR_ERR(ctr);
 if (IS_ERR(ctr))
  goto err_free_mac;

 ctx->mac = mac;
 ctx->ctr = ctr;

 align = crypto_aead_alignmask(tfm);
 align &= ~(crypto_tfm_ctx_alignment() - 1);
 crypto_aead_set_reqsize(
  tfm,
  align + sizeof(struct crypto_ccm_req_priv_ctx) +
  max(crypto_ahash_reqsize(mac), crypto_skcipher_reqsize(ctr)));

 return 0;

err_free_mac:
 crypto_free_ahash(mac);
 return err;
}
