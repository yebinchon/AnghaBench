
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcomp_strm {int buffer; int tfm; } ;


 int PAGE_SIZE ;
 int crypto_comp_compress (int ,void const*,int,int ,unsigned int*) ;

int zcomp_compress(struct zcomp_strm *zstrm,
  const void *src, unsigned int *dst_len)
{
 *dst_len = PAGE_SIZE * 2;

 return crypto_comp_compress(zstrm->tfm,
   src, PAGE_SIZE,
   zstrm->buffer, dst_len);
}
