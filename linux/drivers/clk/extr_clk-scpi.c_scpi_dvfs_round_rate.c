
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scpi_clk {int dummy; } ;
struct clk_hw {int dummy; } ;


 long __scpi_dvfs_round_rate (struct scpi_clk*,unsigned long) ;
 struct scpi_clk* to_scpi_clk (struct clk_hw*) ;

__attribute__((used)) static long scpi_dvfs_round_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long *parent_rate)
{
 struct scpi_clk *clk = to_scpi_clk(hw);

 return __scpi_dvfs_round_rate(clk, rate);
}
