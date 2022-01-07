
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned long u16 ;
struct clk_hw_omap {int hw; } ;


 int clk_hw_get_parent (int *) ;
 unsigned long clk_hw_get_rate (int ) ;

__attribute__((used)) static void _lookup_sddiv(struct clk_hw_omap *clk, u8 *sd_div, u16 m, u8 n)
{
 unsigned long clkinp, sd;
 int mod1, mod2;

 clkinp = clk_hw_get_rate(clk_hw_get_parent(&clk->hw));





 clkinp /= 100000;
 mod1 = (clkinp * m) % (250 * n);
 sd = (clkinp * m) / (250 * n);
 mod2 = sd % 10;
 sd /= 10;

 if (mod1 || mod2)
  sd++;
 *sd_div = sd;
}
