
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mid_pwr {scalar_t__ regs; } ;


 scalar_t__ PM_SSC (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mid_pwr_set_state(struct mid_pwr *pwr, int reg, u32 value)
{
 writel(value, pwr->regs + PM_SSC(reg));
}
