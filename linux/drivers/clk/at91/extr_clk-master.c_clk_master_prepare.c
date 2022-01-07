
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_master {int regmap; } ;
struct clk_hw {int dummy; } ;


 int clk_master_ready (int ) ;
 int cpu_relax () ;
 struct clk_master* to_clk_master (struct clk_hw*) ;

__attribute__((used)) static int clk_master_prepare(struct clk_hw *hw)
{
 struct clk_master *master = to_clk_master(hw);

 while (!clk_master_ready(master->regmap))
  cpu_relax();

 return 0;
}
