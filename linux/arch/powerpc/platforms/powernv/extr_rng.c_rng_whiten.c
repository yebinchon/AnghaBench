
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powernv_rng {unsigned long mask; } ;



__attribute__((used)) static unsigned long rng_whiten(struct powernv_rng *rng, unsigned long val)
{
 unsigned long parity;


 asm ("popcntd %0,%1" : "=r" (parity) : "r" (val));


 val ^= rng->mask;


 rng->mask = (rng->mask << 1) | (parity & 1);

 return val;
}
