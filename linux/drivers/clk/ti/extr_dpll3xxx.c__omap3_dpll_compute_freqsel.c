
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u8 ;
typedef int u16 ;
struct clk_hw_omap {TYPE_1__* dpll_data; } ;
struct TYPE_2__ {int clk_ref; } ;


 unsigned long clk_hw_get_rate (int ) ;
 int pr_debug (char*,unsigned long) ;

__attribute__((used)) static u16 _omap3_dpll_compute_freqsel(struct clk_hw_omap *clk, u8 n)
{
 unsigned long fint;
 u16 f = 0;

 fint = clk_hw_get_rate(clk->dpll_data->clk_ref) / n;

 pr_debug("clock: fint is %lu\n", fint);

 if (fint >= 750000 && fint <= 1000000)
  f = 0x3;
 else if (fint > 1000000 && fint <= 1250000)
  f = 0x4;
 else if (fint > 1250000 && fint <= 1500000)
  f = 0x5;
 else if (fint > 1500000 && fint <= 1750000)
  f = 0x6;
 else if (fint > 1750000 && fint <= 2100000)
  f = 0x7;
 else if (fint > 7500000 && fint <= 10000000)
  f = 0xB;
 else if (fint > 10000000 && fint <= 12500000)
  f = 0xC;
 else if (fint > 12500000 && fint <= 15000000)
  f = 0xD;
 else if (fint > 15000000 && fint <= 17500000)
  f = 0xE;
 else if (fint > 17500000 && fint <= 21000000)
  f = 0xF;
 else
  pr_debug("clock: unknown freqsel setting for %d\n", n);

 return f;
}
