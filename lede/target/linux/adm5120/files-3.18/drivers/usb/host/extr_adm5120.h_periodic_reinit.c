
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct admhcd {int fminterval; TYPE_1__* regs; } ;
struct TYPE_2__ {int fminterval; } ;


 int ADMHC_SFI_FI_MASK ;
 int FIT ;
 int admhc_readl (struct admhcd*,int *) ;
 int admhc_writel (struct admhcd*,int,int *) ;

__attribute__((used)) static inline void periodic_reinit(struct admhcd *ahcd)
{
 u32 fit = admhc_readl(ahcd, &ahcd->regs->fminterval) & FIT;


 admhc_writel(ahcd, (fit ^ FIT) | ahcd->fminterval,
     &ahcd->regs->fminterval);

}
