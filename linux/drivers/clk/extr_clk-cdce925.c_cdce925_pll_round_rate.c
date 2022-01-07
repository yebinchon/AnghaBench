
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct clk_hw {int dummy; } ;


 scalar_t__ cdce925_pll_calculate_rate (unsigned long,int ,int ) ;
 int cdce925_pll_find_rate (unsigned long,unsigned long,int *,int *) ;

__attribute__((used)) static long cdce925_pll_round_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long *parent_rate)
{
 u16 n, m;

 cdce925_pll_find_rate(rate, *parent_rate, &n, &m);
 return (long)cdce925_pll_calculate_rate(*parent_rate, n, m);
}
