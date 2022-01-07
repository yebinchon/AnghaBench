
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_authenc_ctx {struct crypto_ahash* auth; } ;
struct crypto_ahash {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct authenc_request_ctx {int * tail; } ;
struct authenc_instance_ctx {int reqoff; } ;
struct ahash_request {int dummy; } ;
struct aead_request {scalar_t__ cryptlen; scalar_t__ assoclen; int dst; } ;
struct aead_instance {int dummy; } ;


 scalar_t__ ALIGN (scalar_t__,scalar_t__) ;
 struct aead_instance* aead_alg_instance (struct crypto_aead*) ;
 struct authenc_instance_ctx* aead_instance_ctx (struct aead_instance*) ;
 struct authenc_request_ctx* aead_request_ctx (struct aead_request*) ;
 int ahash_request_set_callback (struct ahash_request*,unsigned int,int ,struct aead_request*) ;
 int ahash_request_set_crypt (struct ahash_request*,int ,int *,scalar_t__) ;
 int ahash_request_set_tfm (struct ahash_request*,struct crypto_ahash*) ;
 int authenc_geniv_ahash_done ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_authenc_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 scalar_t__ crypto_ahash_alignmask (struct crypto_ahash*) ;
 int crypto_ahash_digest (struct ahash_request*) ;
 int scatterwalk_map_and_copy (int *,int ,scalar_t__,int ,int) ;

__attribute__((used)) static int crypto_authenc_genicv(struct aead_request *req, unsigned int flags)
{
 struct crypto_aead *authenc = crypto_aead_reqtfm(req);
 struct aead_instance *inst = aead_alg_instance(authenc);
 struct crypto_authenc_ctx *ctx = crypto_aead_ctx(authenc);
 struct authenc_instance_ctx *ictx = aead_instance_ctx(inst);
 struct crypto_ahash *auth = ctx->auth;
 struct authenc_request_ctx *areq_ctx = aead_request_ctx(req);
 struct ahash_request *ahreq = (void *)(areq_ctx->tail + ictx->reqoff);
 u8 *hash = areq_ctx->tail;
 int err;

 hash = (u8 *)ALIGN((unsigned long)hash + crypto_ahash_alignmask(auth),
      crypto_ahash_alignmask(auth) + 1);

 ahash_request_set_tfm(ahreq, auth);
 ahash_request_set_crypt(ahreq, req->dst, hash,
    req->assoclen + req->cryptlen);
 ahash_request_set_callback(ahreq, flags,
       authenc_geniv_ahash_done, req);

 err = crypto_ahash_digest(ahreq);
 if (err)
  return err;

 scatterwalk_map_and_copy(hash, req->dst, req->assoclen + req->cryptlen,
     crypto_aead_authsize(authenc), 1);

 return 0;
}
