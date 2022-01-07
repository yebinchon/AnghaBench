
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lz4_ctx {int lz4_comp_mem; } ;
struct crypto_tfm {int dummy; } ;


 int __lz4_compress_crypto (int const*,unsigned int,int *,unsigned int*,int ) ;
 struct lz4_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int lz4_compress_crypto(struct crypto_tfm *tfm, const u8 *src,
          unsigned int slen, u8 *dst, unsigned int *dlen)
{
 struct lz4_ctx *ctx = crypto_tfm_ctx(tfm);

 return __lz4_compress_crypto(src, slen, dst, dlen, ctx->lz4_comp_mem);
}
