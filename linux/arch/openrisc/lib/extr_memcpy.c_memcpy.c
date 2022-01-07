
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int __kernel_size_t ;



void *memcpy(void *dest, __const void *src, __kernel_size_t n)
{
 unsigned char *d = (unsigned char *)dest, *s = (unsigned char *)src;
 uint32_t *dest_w = (uint32_t *)dest, *src_w = (uint32_t *)src;


 if (!((unsigned int)dest_w & 3) && !((unsigned int)src_w & 3)) {
  for (; n >= 4; n -= 4)
   *dest_w++ = *src_w++;
 }

 d = (unsigned char *)dest_w;
 s = (unsigned char *)src_w;


 for (; n >= 1; n -= 1)
  *d++ = *s++;

 return dest;

}
