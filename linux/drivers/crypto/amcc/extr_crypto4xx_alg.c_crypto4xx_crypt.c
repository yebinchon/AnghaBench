
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int cryptlen; int dst; int src; int base; int iv; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto4xx_ctx {int sa_len; int sa_out; int sa_in; } ;
typedef int __le32 ;


 int AES_BLOCK_SIZE ;
 int AES_IV_SIZE ;
 int EINVAL ;
 int IS_ALIGNED (int ,int ) ;
 int crypto4xx_build_pd (int *,struct crypto4xx_ctx*,int ,int ,int ,int *,unsigned int const,int ,int ,int ,int *) ;
 int crypto4xx_memcpy_to_le32 (int *,int ,unsigned int const) ;
 struct crypto4xx_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;

__attribute__((used)) static inline int crypto4xx_crypt(struct skcipher_request *req,
      const unsigned int ivlen, bool decrypt,
      bool check_blocksize)
{
 struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(req);
 struct crypto4xx_ctx *ctx = crypto_skcipher_ctx(cipher);
 __le32 iv[AES_IV_SIZE];

 if (check_blocksize && !IS_ALIGNED(req->cryptlen, AES_BLOCK_SIZE))
  return -EINVAL;

 if (ivlen)
  crypto4xx_memcpy_to_le32(iv, req->iv, ivlen);

 return crypto4xx_build_pd(&req->base, ctx, req->src, req->dst,
  req->cryptlen, iv, ivlen, decrypt ? ctx->sa_in : ctx->sa_out,
  ctx->sa_len, 0, ((void*)0));
}
