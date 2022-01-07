
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int crt_flags; } ;
struct aes_ctx {unsigned int key_length; scalar_t__ buf; } ;


 unsigned long CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int DPRINTF (int ,char*,struct aes_ctx*,unsigned int,unsigned int) ;
 int EINVAL ;
 struct aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int *,int const*,unsigned int) ;

int aes_set_key (struct crypto_tfm *tfm, const u8 *in_key, unsigned int key_len)
{
    struct aes_ctx *ctx = crypto_tfm_ctx(tfm);
    unsigned long *flags = (unsigned long *) &tfm->crt_flags;





    if (key_len != 16 && key_len != 24 && key_len != 32) {
        *flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
        return -EINVAL;
    }

    ctx->key_length = key_len;
    DPRINTF(0, "ctx @%p, key_len %d, ctx->key_length %d\n", ctx, key_len, ctx->key_length);
    memcpy ((u8 *) (ctx->buf), in_key, key_len);

    return 0;
}
