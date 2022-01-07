
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tea_ctx {void** KEY; } ;
struct crypto_tfm {int dummy; } ;
typedef int __le32 ;


 struct tea_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 void* le32_to_cpu (int const) ;

__attribute__((used)) static int tea_setkey(struct crypto_tfm *tfm, const u8 *in_key,
        unsigned int key_len)
{
 struct tea_ctx *ctx = crypto_tfm_ctx(tfm);
 const __le32 *key = (const __le32 *)in_key;

 ctx->KEY[0] = le32_to_cpu(key[0]);
 ctx->KEY[1] = le32_to_cpu(key[1]);
 ctx->KEY[2] = le32_to_cpu(key[2]);
 ctx->KEY[3] = le32_to_cpu(key[3]);

 return 0;

}
