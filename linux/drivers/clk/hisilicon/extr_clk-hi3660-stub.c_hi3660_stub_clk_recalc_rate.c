
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hi3660_stub_clk {int rate; int id; } ;
struct clk_hw {int dummy; } ;


 int MHZ ;
 scalar_t__ freq_reg ;
 int readl (scalar_t__) ;
 struct hi3660_stub_clk* to_stub_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long hi3660_stub_clk_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct hi3660_stub_clk *stub_clk = to_stub_clk(hw);





 stub_clk->rate = readl(freq_reg + (stub_clk->id << 2)) * MHZ;
 return stub_clk->rate;
}
