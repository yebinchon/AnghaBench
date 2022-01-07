
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aspeed_clk_gate {int clock_idx; } ;


 int ASPEED_G6_CLK_STOP_CTRL ;
 int ASPEED_G6_CLK_STOP_CTRL2 ;

__attribute__((used)) static u32 get_clock_reg(struct aspeed_clk_gate *gate)
{
 if (gate->clock_idx < 32)
  return ASPEED_G6_CLK_STOP_CTRL;

 return ASPEED_G6_CLK_STOP_CTRL2;
}
