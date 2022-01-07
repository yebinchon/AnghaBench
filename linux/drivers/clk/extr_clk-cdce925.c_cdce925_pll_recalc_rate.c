
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_cdce925_pll {int m; int n; } ;


 unsigned long cdce925_pll_calculate_rate (unsigned long,int ,int ) ;
 struct clk_cdce925_pll* to_clk_cdce925_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long cdce925_pll_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{

 struct clk_cdce925_pll *data = to_clk_cdce925_pll(hw);

 return cdce925_pll_calculate_rate(parent_rate, data->n, data->m);
}
