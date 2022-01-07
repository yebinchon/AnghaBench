
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_cpu {int div; int pll; int mux; int step; } ;


 int clk_set_parent (int ,int ) ;
 int clk_set_rate (int ,unsigned long) ;
 struct clk_cpu* to_clk_cpu (struct clk_hw*) ;

__attribute__((used)) static int clk_cpu_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct clk_cpu *cpu = to_clk_cpu(hw);
 int ret;


 ret = clk_set_parent(cpu->mux, cpu->step);
 if (ret)
  return ret;


 ret = clk_set_rate(cpu->pll, rate);
 if (ret) {
  clk_set_parent(cpu->mux, cpu->pll);
  return ret;
 }

 clk_set_parent(cpu->mux, cpu->pll);


 clk_set_rate(cpu->div, rate);

 return 0;
}
