
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_pll {int dummy; } ;
struct iproc_clk {struct iproc_pll* pll; } ;
struct clk_hw {int dummy; } ;


 int __pll_enable (struct iproc_pll*) ;
 struct iproc_clk* to_iproc_clk (struct clk_hw*) ;

__attribute__((used)) static int iproc_pll_enable(struct clk_hw *hw)
{
 struct iproc_clk *clk = to_iproc_clk(hw);
 struct iproc_pll *pll = clk->pll;

 return __pll_enable(pll);
}
