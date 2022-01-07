
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;
 int LZ4HC_DEFAULT_CLEVEL ;
 int LZ4_compress_HC (int const*,int *,unsigned int,unsigned int,int ,void*) ;

__attribute__((used)) static int __lz4hc_compress_crypto(const u8 *src, unsigned int slen,
       u8 *dst, unsigned int *dlen, void *ctx)
{
 int out_len = LZ4_compress_HC(src, dst, slen,
  *dlen, LZ4HC_DEFAULT_CLEVEL, ctx);

 if (!out_len)
  return -EINVAL;

 *dlen = out_len;
 return 0;
}
