
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_scomp {int dummy; } ;


 int sw842_compress (int const*,unsigned int,int *,unsigned int*,void*) ;

__attribute__((used)) static int crypto842_scompress(struct crypto_scomp *tfm,
          const u8 *src, unsigned int slen,
          u8 *dst, unsigned int *dlen, void *ctx)
{
 return sw842_compress(src, slen, dst, dlen, ctx);
}
