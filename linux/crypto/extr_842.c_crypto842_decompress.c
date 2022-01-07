
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;


 int sw842_decompress (int const*,unsigned int,int *,unsigned int*) ;

__attribute__((used)) static int crypto842_decompress(struct crypto_tfm *tfm,
    const u8 *src, unsigned int slen,
    u8 *dst, unsigned int *dlen)
{
 return sw842_decompress(src, slen, dst, dlen);
}
