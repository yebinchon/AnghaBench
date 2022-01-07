
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static void vli_set(u64 *dest, const u64 *src, unsigned int ndigits)
{
 int i;

 for (i = 0; i < ndigits; i++)
  dest[i] = src[i];
}
