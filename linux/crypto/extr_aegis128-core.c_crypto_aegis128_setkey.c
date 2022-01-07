
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int bytes; } ;
struct aegis_ctx {TYPE_1__ key; } ;


 unsigned int AEGIS128_KEY_SIZE ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 struct aegis_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int ) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int crypto_aegis128_setkey(struct crypto_aead *aead, const u8 *key,
      unsigned int keylen)
{
 struct aegis_ctx *ctx = crypto_aead_ctx(aead);

 if (keylen != AEGIS128_KEY_SIZE) {
  crypto_aead_set_flags(aead, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 memcpy(ctx->key.bytes, key, AEGIS128_KEY_SIZE);
 return 0;
}
