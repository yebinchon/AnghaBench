
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;
 int LZO_E_OK ;
 int lzorle1x_1_compress (int const*,unsigned int,int *,size_t*,void*) ;

__attribute__((used)) static int __lzorle_compress(const u8 *src, unsigned int slen,
     u8 *dst, unsigned int *dlen, void *ctx)
{
 size_t tmp_len = *dlen;
 int err;

 err = lzorle1x_1_compress(src, slen, dst, &tmp_len, ctx);

 if (err != LZO_E_OK)
  return -EINVAL;

 *dlen = tmp_len;
 return 0;
}
