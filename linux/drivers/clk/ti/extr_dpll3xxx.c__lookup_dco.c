
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef unsigned long u16 ;
struct clk_hw_omap {int hw; } ;


 int clk_hw_get_parent (int *) ;
 unsigned long clk_hw_get_rate (int ) ;

__attribute__((used)) static void _lookup_dco(struct clk_hw_omap *clk, u8 *dco, u16 m, u8 n)
{
 unsigned long fint, clkinp;

 clkinp = clk_hw_get_rate(clk_hw_get_parent(&clk->hw));
 fint = (clkinp / n) * m;

 if (fint < 1000000000)
  *dco = 2;
 else
  *dco = 4;
}
