
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct admhcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int int_status; } ;


 int admhc_writel (struct admhcd*,int ,int *) ;

__attribute__((used)) static inline void admhc_intr_ack(struct admhcd *ahcd, u32 ints)
{
 admhc_writel(ahcd, ints, &ahcd->regs->int_status);
}
