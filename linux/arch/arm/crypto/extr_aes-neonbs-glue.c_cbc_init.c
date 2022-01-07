
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct aesbs_cbc_ctx {int enc_tfm; } ;


 int PTR_ERR_OR_ZERO (int ) ;
 int crypto_alloc_cipher (char*,int ,int ) ;
 struct aesbs_cbc_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int cbc_init(struct crypto_tfm *tfm)
{
 struct aesbs_cbc_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->enc_tfm = crypto_alloc_cipher("aes", 0, 0);

 return PTR_ERR_OR_ZERO(ctx->enc_tfm);
}
