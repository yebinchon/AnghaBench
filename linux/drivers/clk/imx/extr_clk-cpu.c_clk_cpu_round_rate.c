
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_cpu {int pll; } ;


 long clk_round_rate (int ,unsigned long) ;
 struct clk_cpu* to_clk_cpu (struct clk_hw*) ;

__attribute__((used)) static long clk_cpu_round_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *prate)
{
 struct clk_cpu *cpu = to_clk_cpu(hw);

 return clk_round_rate(cpu->pll, rate);
}
