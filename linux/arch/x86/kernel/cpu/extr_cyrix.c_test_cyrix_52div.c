
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int test_cyrix_52div(void)
{
 unsigned int test;

 __asm__ __volatile__(
      "sahf\n\t"
      "div %b2\n\t"
      "lahf"
      : "=a" (test)
      : "0" (5), "q" (2)
      : "cc");


 return (unsigned char) (test >> 8) == 0x02;
}
