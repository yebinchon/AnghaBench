
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mid_pwr {scalar_t__ regs; } ;


 scalar_t__ PM_SSS (int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static u32 mid_pwr_get_state(struct mid_pwr *pwr, int reg)
{
 return readl(pwr->regs + PM_SSS(reg));
}
