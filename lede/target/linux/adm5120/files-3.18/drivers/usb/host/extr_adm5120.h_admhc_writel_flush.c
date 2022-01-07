
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct admhcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int gencontrol; } ;


 int admhc_readl (struct admhcd const*,int *) ;

__attribute__((used)) static inline void admhc_writel_flush(const struct admhcd *ahcd)
{




}
