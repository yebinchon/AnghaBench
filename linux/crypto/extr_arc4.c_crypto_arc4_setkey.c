
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;
struct arc4_ctx {int dummy; } ;


 int arc4_setkey (struct arc4_ctx*,int const*,unsigned int) ;
 struct arc4_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;

__attribute__((used)) static int crypto_arc4_setkey(struct crypto_skcipher *tfm, const u8 *in_key,
         unsigned int key_len)
{
 struct arc4_ctx *ctx = crypto_skcipher_ctx(tfm);

 return arc4_setkey(ctx, in_key, key_len);
}
