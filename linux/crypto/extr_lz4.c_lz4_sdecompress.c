
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_scomp {int dummy; } ;


 int __lz4_decompress_crypto (int const*,unsigned int,int *,unsigned int*,int *) ;

__attribute__((used)) static int lz4_sdecompress(struct crypto_scomp *tfm, const u8 *src,
      unsigned int slen, u8 *dst, unsigned int *dlen,
      void *ctx)
{
 return __lz4_decompress_crypto(src, slen, dst, dlen, ((void*)0));
}
