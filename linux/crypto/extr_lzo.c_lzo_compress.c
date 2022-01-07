
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lzo_ctx {int lzo_comp_mem; } ;
struct crypto_tfm {int dummy; } ;


 int __lzo_compress (int const*,unsigned int,int *,unsigned int*,int ) ;
 struct lzo_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int lzo_compress(struct crypto_tfm *tfm, const u8 *src,
   unsigned int slen, u8 *dst, unsigned int *dlen)
{
 struct lzo_ctx *ctx = crypto_tfm_ctx(tfm);

 return __lzo_compress(src, slen, dst, dlen, ctx->lzo_comp_mem);
}
