
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct icst_vco {int r; size_t s; scalar_t__ v; } ;
struct icst_params {int ref; int* s2div; } ;


 int do_div (int,int) ;

unsigned long icst_hz(const struct icst_params *p, struct icst_vco vco)
{
 u64 dividend = p->ref * 2 * (u64)(vco.v + 8);
 u32 divisor = (vco.r + 2) * p->s2div[vco.s];

 do_div(dividend, divisor);
 return (unsigned long)dividend;
}
