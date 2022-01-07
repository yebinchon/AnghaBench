
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sha1_hmac_ctx {unsigned int keylen; int key; } ;
struct deu_hash_t {int KIDX; } ;
struct crypto_shash {int dummy; } ;


 int EINVAL ;
 scalar_t__ HASH_START ;
 unsigned int SHA1_HMAC_MAX_KEYLEN ;
 struct sha1_hmac_ctx* crypto_shash_ctx (struct crypto_shash*) ;
 int memcpy (int *,int const*,unsigned int) ;
 int printk (char*) ;

__attribute__((used)) static int sha1_hmac_setkey(struct crypto_shash *tfm, const u8 *key, unsigned int keylen)
{
    struct sha1_hmac_ctx *sctx = crypto_shash_ctx(tfm);
    volatile struct deu_hash_t *hashs = (struct deu_hash_t *) HASH_START;

    if (keylen > SHA1_HMAC_MAX_KEYLEN) {
 printk("Key length exceeds maximum key length\n");
 return -EINVAL;
    }



    hashs->KIDX |= 0x80000000;
    memcpy(&sctx->key, key, keylen);
    sctx->keylen = keylen;

    return 0;

}
