
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pll_data {scalar_t__ base; } ;


 int soc_readl (scalar_t__) ;

__attribute__((used)) static u32 pll_read(struct pll_data *pll, int reg)
{
 return soc_readl(pll->base + reg);
}
