
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lzorle_ctx {int lzorle_comp_mem; } ;
struct crypto_tfm {int dummy; } ;


 int __lzorle_compress (int const*,unsigned int,int *,unsigned int*,int ) ;
 struct lzorle_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int lzorle_compress(struct crypto_tfm *tfm, const u8 *src,
   unsigned int slen, u8 *dst, unsigned int *dlen)
{
 struct lzorle_ctx *ctx = crypto_tfm_ctx(tfm);

 return __lzorle_compress(src, slen, dst, dlen, ctx->lzorle_comp_mem);
}
