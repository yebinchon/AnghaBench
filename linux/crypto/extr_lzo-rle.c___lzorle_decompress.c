
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;
 int LZO_E_OK ;
 int lzo1x_decompress_safe (int const*,unsigned int,int *,size_t*) ;

__attribute__((used)) static int __lzorle_decompress(const u8 *src, unsigned int slen,
       u8 *dst, unsigned int *dlen)
{
 int err;
 size_t tmp_len = *dlen;

 err = lzo1x_decompress_safe(src, slen, dst, &tmp_len);

 if (err != LZO_E_OK)
  return -EINVAL;

 *dlen = tmp_len;
 return 0;
}
