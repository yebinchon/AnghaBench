
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;
 int LZ4_decompress_safe (int const*,int *,unsigned int,unsigned int) ;

__attribute__((used)) static int __lz4hc_decompress_crypto(const u8 *src, unsigned int slen,
         u8 *dst, unsigned int *dlen, void *ctx)
{
 int out_len = LZ4_decompress_safe(src, dst, slen, *dlen);

 if (out_len < 0)
  return -EINVAL;

 *dlen = out_len;
 return 0;
}
