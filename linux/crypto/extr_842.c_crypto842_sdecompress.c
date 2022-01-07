
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_scomp {int dummy; } ;


 int sw842_decompress (int const*,unsigned int,int *,unsigned int*) ;

__attribute__((used)) static int crypto842_sdecompress(struct crypto_scomp *tfm,
     const u8 *src, unsigned int slen,
     u8 *dst, unsigned int *dlen, void *ctx)
{
 return sw842_decompress(src, slen, dst, dlen);
}
