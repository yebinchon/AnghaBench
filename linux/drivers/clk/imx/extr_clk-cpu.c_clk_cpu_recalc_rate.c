
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_cpu {int div; } ;


 unsigned long clk_get_rate (int ) ;
 struct clk_cpu* to_clk_cpu (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_cpu_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct clk_cpu *cpu = to_clk_cpu(hw);

 return clk_get_rate(cpu->div);
}
