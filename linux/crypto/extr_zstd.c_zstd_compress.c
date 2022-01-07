
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zstd_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 int __zstd_compress (int const*,unsigned int,int *,unsigned int*,struct zstd_ctx*) ;
 struct zstd_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int zstd_compress(struct crypto_tfm *tfm, const u8 *src,
    unsigned int slen, u8 *dst, unsigned int *dlen)
{
 struct zstd_ctx *ctx = crypto_tfm_ctx(tfm);

 return __zstd_compress(src, slen, dst, dlen, ctx);
}
