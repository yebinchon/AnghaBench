
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long base_lra(unsigned long address)
{
 unsigned long real;

 asm volatile(
  "	lra	%0,0(%1)\n"
  : "=d" (real) : "a" (address) : "cc");
 return real;
}
