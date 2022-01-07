
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int rate; } ;


 int __raw_readl (scalar_t__) ;
 scalar_t__ cprc_base ;
 int * ifc_table ;

__attribute__((used)) static void master_clk_init(struct clk *clk)
{
 int idx = (__raw_readl(cprc_base + 0x00) >> 6) & 0x0007;
 clk->rate *= ifc_table[idx];
}
