
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;


 int EINVAL ;
 int memcpy (int *,int const*,unsigned int) ;

__attribute__((used)) static int null_compress(struct crypto_tfm *tfm, const u8 *src,
    unsigned int slen, u8 *dst, unsigned int *dlen)
{
 if (slen > *dlen)
  return -EINVAL;
 memcpy(dst, src, slen);
 *dlen = slen;
 return 0;
}
