
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void slow_copy_page(void *to, void *from)
{
 int d0, d1, d2;

 __asm__ __volatile__(
  "cld\n\t"
  "rep ; movsl"
  : "=&c" (d0), "=&D" (d1), "=&S" (d2)
  : "0" (1024), "1" ((long) to), "2" ((long) from)
  : "memory");
}
