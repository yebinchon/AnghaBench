
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int plo_test_bit(unsigned char nr)
{
 register unsigned long r0 asm("0") = (unsigned long) nr | 0x100;
 int cc;

 asm volatile(

  "	plo	0,0,0,0(0)\n"
  "	ipm	%0\n"
  "	srl	%0,28\n"
  : "=d" (cc)
  : "d" (r0)
  : "cc");
 return cc == 0;
}
