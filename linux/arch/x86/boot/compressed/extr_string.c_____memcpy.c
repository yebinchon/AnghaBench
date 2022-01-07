
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void *____memcpy(void *dest, const void *src, size_t n)
{
 long d0, d1, d2;
 asm volatile(
  "rep ; movsq\n\t"
  "movq %4,%%rcx\n\t"
  "rep ; movsb\n\t"
  : "=&c" (d0), "=&D" (d1), "=&S" (d2)
  : "0" (n >> 3), "g" (n & 7), "1" (dest), "2" (src)
  : "memory");

 return dest;
}
