
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int get_unaligned_le64 (int const*) ;

void vli_from_le64(u64 *dest, const void *src, unsigned int ndigits)
{
 int i;
 const u64 *from = src;

 for (i = 0; i < ndigits; i++)
  dest[i] = get_unaligned_le64(&from[i]);
}
