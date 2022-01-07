
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int flags; } ;
struct arm_idlect1_clk {scalar_t__ no_idle_count; int idlect_shift; } ;


 int CLOCK_IDLE_CONTROL ;
 int arm_idlect1_mask ;

__attribute__((used)) static void omap1_clk_allow_idle(struct clk *clk)
{
 struct arm_idlect1_clk * iclk = (struct arm_idlect1_clk *)clk;

 if (!(clk->flags & CLOCK_IDLE_CONTROL))
  return;

 if (iclk->no_idle_count > 0 && !(--iclk->no_idle_count))
  arm_idlect1_mask |= 1 << iclk->idlect_shift;
}
