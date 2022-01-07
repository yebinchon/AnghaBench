
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_lpsc_clk {int dummy; } ;
struct clk_hw {int dummy; } ;


 int LPSC_STATE_DISABLE ;
 int davinci_lpsc_config (struct davinci_lpsc_clk*,int ) ;
 struct davinci_lpsc_clk* to_davinci_lpsc_clk (struct clk_hw*) ;

__attribute__((used)) static void davinci_lpsc_clk_disable(struct clk_hw *hw)
{
 struct davinci_lpsc_clk *lpsc = to_davinci_lpsc_clk(hw);

 davinci_lpsc_config(lpsc, LPSC_STATE_DISABLE);
}
