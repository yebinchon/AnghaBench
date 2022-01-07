
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto4xx_ctx {int sa_len; int sa_out; int sa_in; } ;
struct crypto4xx_aead_reqctx {int dst; } ;
struct TYPE_2__ {int tfm; } ;
struct aead_request {unsigned int cryptlen; int assoclen; int dst; int src; TYPE_1__ base; int iv; } ;
typedef int iv ;
typedef int __le32 ;


 int GCM_AES_IV_SIZE ;
 struct crypto4xx_aead_reqctx* aead_request_ctx (struct aead_request*) ;
 int cpu_to_le32 (int) ;
 int crypto4xx_aead_fallback (struct aead_request*,struct crypto4xx_ctx*,int) ;
 scalar_t__ crypto4xx_aead_need_fallback (struct aead_request*,unsigned int,int,int) ;
 int crypto4xx_build_pd (TYPE_1__*,struct crypto4xx_ctx*,int ,int ,unsigned int,int *,int,int ,int ,int ,int ) ;
 int crypto4xx_memcpy_to_le32 (int *,int ,int ) ;
 scalar_t__ crypto_aead_authsize (int ) ;
 int crypto_aead_reqtfm (struct aead_request*) ;
 struct crypto4xx_ctx* crypto_tfm_ctx (int ) ;

__attribute__((used)) static inline int crypto4xx_crypt_aes_gcm(struct aead_request *req,
       bool decrypt)
{
 struct crypto4xx_ctx *ctx = crypto_tfm_ctx(req->base.tfm);
 struct crypto4xx_aead_reqctx *rctx = aead_request_ctx(req);
 __le32 iv[4];
 unsigned int len = req->cryptlen;

 if (decrypt)
  len -= crypto_aead_authsize(crypto_aead_reqtfm(req));

 if (crypto4xx_aead_need_fallback(req, len, 0, decrypt))
  return crypto4xx_aead_fallback(req, ctx, decrypt);

 crypto4xx_memcpy_to_le32(iv, req->iv, GCM_AES_IV_SIZE);
 iv[3] = cpu_to_le32(1);

 return crypto4xx_build_pd(&req->base, ctx, req->src, req->dst,
      len, iv, sizeof(iv),
      decrypt ? ctx->sa_in : ctx->sa_out,
      ctx->sa_len, req->assoclen, rctx->dst);
}
