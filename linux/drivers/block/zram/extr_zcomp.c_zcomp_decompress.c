
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcomp_strm {int tfm; } ;


 unsigned int PAGE_SIZE ;
 int crypto_comp_decompress (int ,void const*,unsigned int,void*,unsigned int*) ;

int zcomp_decompress(struct zcomp_strm *zstrm,
  const void *src, unsigned int src_len, void *dst)
{
 unsigned int dst_len = PAGE_SIZE;

 return crypto_comp_decompress(zstrm->tfm,
   src, src_len,
   dst, &dst_len);
}
