
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct admhcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int * portstatus; } ;


 int admhc_readl (struct admhcd*,int *) ;

__attribute__((used)) static inline u32 admhc_read_portstatus(struct admhcd *ahcd, int port)
{
 return admhc_readl(ahcd, &ahcd->regs->portstatus[port]);
}
