
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct deflate_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 int __deflate_decompress (int const*,unsigned int,int *,unsigned int*,struct deflate_ctx*) ;
 struct deflate_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int deflate_decompress(struct crypto_tfm *tfm, const u8 *src,
         unsigned int slen, u8 *dst, unsigned int *dlen)
{
 struct deflate_ctx *dctx = crypto_tfm_ctx(tfm);

 return __deflate_decompress(src, slen, dst, dlen, dctx);
}
