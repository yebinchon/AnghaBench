
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int cpg_mstp_clock_endisable (struct clk_hw*,int) ;

__attribute__((used)) static void cpg_mstp_clock_disable(struct clk_hw *hw)
{
 cpg_mstp_clock_endisable(hw, 0);
}
