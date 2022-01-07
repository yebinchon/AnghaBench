
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg; } ;
struct sd_clock {TYPE_1__ csn; } ;
struct clk_hw {int dummy; } ;


 int CPG_SD_STP_MASK ;
 int readl (int ) ;
 struct sd_clock* to_sd_clock (struct clk_hw*) ;

__attribute__((used)) static int cpg_sd_clock_is_enabled(struct clk_hw *hw)
{
 struct sd_clock *clock = to_sd_clock(hw);

 return !(readl(clock->csn.reg) & CPG_SD_STP_MASK);
}
