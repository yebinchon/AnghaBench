
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef unsigned long u32 ;


 unsigned long ALPHA_SHIFT (unsigned long) ;

__attribute__((used)) static unsigned long
alpha_pll_calc_rate(u64 prate, u32 l, u32 a, u32 alpha_width)
{
 return (prate * l) + ((prate * a) >> ALPHA_SHIFT(alpha_width));
}
