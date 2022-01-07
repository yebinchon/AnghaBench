
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_pwr {scalar_t__ regs; } ;


 scalar_t__ PM_STS ;
 int PM_STS_BUSY ;
 int readl (scalar_t__) ;

__attribute__((used)) static bool mid_pwr_is_busy(struct mid_pwr *pwr)
{
 return !!(readl(pwr->regs + PM_STS) & PM_STS_BUSY);
}
