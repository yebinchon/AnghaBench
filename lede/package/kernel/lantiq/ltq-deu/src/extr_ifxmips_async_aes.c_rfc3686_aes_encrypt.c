
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;
struct aes_ctx {int * nonce; } ;
struct ablkcipher_request {int * info; } ;
typedef int __be32 ;


 int CRYPTO_DIR_ENCRYPT ;
 int CTR_RFC3686_IV_SIZE ;
 int CTR_RFC3686_NONCE_SIZE ;
 int cpu_to_be32 (int) ;
 struct aes_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int lq_aes_queue_mgr (struct aes_ctx*,struct ablkcipher_request*,int *,int ,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int rfc3686_aes_encrypt(struct ablkcipher_request *areq)
{
    struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
    struct aes_ctx *ctx = crypto_ablkcipher_ctx(cipher);
    int ret;
    u8 *info = areq->info;
    u8 rfc3686_iv[16];

    memcpy(rfc3686_iv, ctx->nonce, CTR_RFC3686_NONCE_SIZE);
    memcpy(rfc3686_iv + CTR_RFC3686_NONCE_SIZE, info, CTR_RFC3686_IV_SIZE);


    *(__be32 *)(rfc3686_iv + CTR_RFC3686_NONCE_SIZE + CTR_RFC3686_IV_SIZE) =
        cpu_to_be32(1);

    areq->info = rfc3686_iv;
    ret = lq_aes_queue_mgr(ctx, areq, areq->info, CRYPTO_DIR_ENCRYPT, 4);
    areq->info = info;
    return ret;
}
