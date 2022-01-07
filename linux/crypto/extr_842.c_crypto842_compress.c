
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;
struct crypto842_ctx {int wmem; } ;


 struct crypto842_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int sw842_compress (int const*,unsigned int,int *,unsigned int*,int ) ;

__attribute__((used)) static int crypto842_compress(struct crypto_tfm *tfm,
         const u8 *src, unsigned int slen,
         u8 *dst, unsigned int *dlen)
{
 struct crypto842_ctx *ctx = crypto_tfm_ctx(tfm);

 return sw842_compress(src, slen, dst, dlen, ctx->wmem);
}
